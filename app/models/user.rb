class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy

  # 画像投稿用メゾット
  attachment :profile_image

  validates :name, uniqueness: true, length: {minimum: 2, maximum: 20} #nameに一意性をもたせる,2~20字以内
  validates :introduction, length: {maximum: 50} #introduction最大50字
end
