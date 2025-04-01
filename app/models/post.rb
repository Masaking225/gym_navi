class Post < ApplicationRecord
  has_one_attached :image  
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
  validates :shop_name, presence: true
  validates :shop_address, presence: true


end
