class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 30 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create

  mount_uploader :profile_picture, ProfilepictureUploader

  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
