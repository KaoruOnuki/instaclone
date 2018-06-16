class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 30 }
  validates :image, presence: true

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
