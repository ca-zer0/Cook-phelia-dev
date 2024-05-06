class Recipe < ApplicationRecord

  belongs_to :category
  belongs_to :kondate
  has_many :foods
  has_one_attached :image
end
