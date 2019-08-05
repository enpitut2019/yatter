class Reaction < ApplicationRecord
  enum emotion: {not_like: 0, like: 1}
  belongs_to :user
  belongs_to :post

end
