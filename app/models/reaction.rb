class Reaction < ApplicationRecord
  enum emotion: {unread: 0, iine: 1, search: 2}
  belongs_to :user
  belongs_to :post

end
