class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true  #titleが空欄でない
  validates :body, presence: true, length: {maximum: 200}
end
