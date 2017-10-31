class Tour < ApplicationRecord
	validates :title, :city, :summary, :est_time, presence: true
  has_many :reviews, dependent: :destroy 
  has_many :markers, dependent: :destroy 
  belongs_to :user

  ratyrate_rateable "details", "coolness"
  acts_as_taggable 

  has_attached_file :title_img, styles: { banner: "1300x1300>", medium: "300x300>", thumb: "100x100>" }, default_url: "default2_:style.jpg"
  validates_attachment_content_type :title_img, content_type: /\Aimage\/.*\z/
end
