class Post < ApplicationRecord
  enum status: [:yaru,:yatta]
  has_many :reactions
  belongs_to :user
  
end
