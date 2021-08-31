class User < ApplicationRecord
  has_many :customer_bookings, source: :bookings
  has_many :vinyls
  has_many :owner_bookings, through: :vinyls, source: :bookings

  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :password, presence: true
  validates :email, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_url
    if avatar.attached?
      avatar.service_url
    else
      "https://simulacionymedicina.es/wp-content/uploads/2015/11/default-avatar-300x300-1.jpg"
    end
  end
end
