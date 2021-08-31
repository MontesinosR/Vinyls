class Vinyl < ApplicationRecord

  GENRES = ['Classic Rock', 'Hip-Hop', 'Pop', 'Jazz', 'Disco', 'Reggaeton']
  CONDITION = ['Mint Condition', 'Good', 'Okay', 'Worn']

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

end
