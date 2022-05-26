class Chef < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  validates :cuisine, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
