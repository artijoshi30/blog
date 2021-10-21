class Article < ApplicationRecord
  has_one_attached :image
  has_many :comments
  has_many :likes#, dependent: :destroy

  validates :title, presence:true
  validates :body, presence:true, length: { minimum: 10 }

  mount_uploader :image, AvatarUploader

  acts_as_taggable_on :tags

  has_many :follows
  has_many :users, through: :follows
  belongs_to :user
end
