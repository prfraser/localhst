class CheckoutController < ApplicationController
  # post /checkout  
  def create
    
    # Look up the tour so we can:
    # - Grab the owner's stripe ID to distribute funds
    @tour = Tour.find(params[:tour_id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    tipamount = 500

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => tipamount,
      :description => @tour.title,
      :currency    => 'aud',
      # Strip connect magic, send 80% of the funds (keep 20% cut)
      :destination => {
        :amount => (tipamount * 0.8).to_i,
        :account => @tour.user.stripe_user_id,
      }
    )

    # Log the response from Stripe
    puts charge.inspect

    to_email = @tour.user.email
    title = @tour.title
    emailamount = ((tipamount * 0.8)/100).to_i
    TipMailer.tip_confirmation(to_email, emailamount, title).deliver_now

    # Success!
    flash[:notice] = "Thank you for your support."
    redirect_to @tour

    rescue Stripe::CardError => e
      flash[:notice] = e.message
      redirect_to @tour
  end
end