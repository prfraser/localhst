class Review < ApplicationRecord
	validates :content, presence: true
  belongs_to :tour
  belongs_to :user
end
