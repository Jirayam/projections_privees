class Viewing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :search_by_movie_info,
    against: [ :movie_info ],
    using: {
      tsearch: { prefix: true }
    }
end
