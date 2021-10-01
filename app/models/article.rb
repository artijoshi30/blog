class Article < ApplicationRecord
    validates:title,presence:true
    validates:body,presence:true,length:{minimum:10}
     mount_uploader :image, AvatarUploader
     has_one_attached :image
     has_many :comments
    has_many :likes, dependent: :destroy
end
