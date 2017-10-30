class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
	validates :first_name, :last_name, presence: true
  ratyrate_rater

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "70x60>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
