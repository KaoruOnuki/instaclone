class User < ApplicationRecord
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create

  mount_uploader :profile_picture, ProfilepictureUploader

  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
