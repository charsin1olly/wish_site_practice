class WishList3 < ApplicationRecord
  validates :title , presence: true
  validates :content , presence: true
end
