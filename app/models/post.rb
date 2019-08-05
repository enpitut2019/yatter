class Post < ApplicationRecord
  enum status: {yaru: 0, yatta: 1}
  has_many :reactions
  belongs_to :user
  
end
