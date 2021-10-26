class Article < ApplicationRecord
  has_one_attached :image
  has_many :comments
  has_many :likes#, dependent: :destroy

  validates :title, presence:true
  validates :body, presence:true, length: { minimum: 10 }

  mount_uploader :image, AvatarUploader

  acts_as_taggable_on :tags

  belongs_to :user

  has_and_belongs_to_many :users


  def tagged_users_list
    users.map { |user| "@" + user.full_name.parameterize.underscore }.join(" ")
  end
end
