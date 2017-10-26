class Tour < ApplicationRecord
  has_many :reviews
  belongs_to :user

  ratyrate_rateable "details", "coolness"
  acts_as_taggable 

  has_attached_file :title_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default2.jpg"
  validates_attachment_content_type :title_img, content_type: /\Aimage\/.*\z/
end
