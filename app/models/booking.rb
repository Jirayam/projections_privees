class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :viewing
  enum progress: [:pending, :accepted, :refused]
end
