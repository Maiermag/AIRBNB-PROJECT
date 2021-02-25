class Shoe < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
    pg_search_scope :search_by_brand_and_size,
      against: [:brand, :size],
      using: {
        tsearch: { prefix: true }
      }
end
