class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, AvatarUploader

  has_one_attached :image
  # mount_uploaders :avatars, AvatarUploader
has_many :likes, dependent: :destroy
has_many :follows
end
