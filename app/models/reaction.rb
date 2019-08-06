class Reaction < ApplicationRecord
  enum emotion: {not_like: 0, like: 1, sugoine: 2, eraine: 3, chou_iine: 4, kami: 5, igyou: 6}
  belongs_to :user
  belongs_to :post

end
