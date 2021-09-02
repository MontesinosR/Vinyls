class Vinyl < ApplicationRecord

  GENRES = ['Classic Rock', 'Hip-Hop', 'Pop', 'Jazz', 'Disco', 'Reggaeton']
  CONDITION = ['Mint', 'Good', 'Okay', 'Worn']
  PRICE_ORDER = ['Lowest to highest', 'Highest to lowest'] #just for filters, ignore

  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :album_name, presence: true
  validates :artist, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :genre, presence: true
  validates :daily_rate, presence: true, numericality: { greater_than: 0 }
  validates :genre, inclusion: { in: GENRES }
  validates :condition, inclusion: { in: CONDITION }

  # pg search
  include PgSearch::Model
  pg_search_scope :search_by_artist_and_album_name,
    against: [ :artist, :album_name ],
    using: {
      tsearch: { prefix: true }
    }
end
