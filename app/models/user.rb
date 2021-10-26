  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    mount_uploader :image, AvatarUploader

    has_one_attached :image
    has_many :likes, dependent: :destroy
    has_many :articles

    has_many :followers, class_name: "Follow", foreign_key: "followed_id"
    has_many :following, class_name: "Follow", foreign_key: "follower_id"
    # has_and_belongs_to_many :articles_tagged
  end
