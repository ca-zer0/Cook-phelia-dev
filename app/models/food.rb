class Food < ApplicationRecord
  with_options presence: true do
    validates :people
    validates :name
    validates :amount
  end

  has_many :list_foods
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  has_many :lists, through: :list_foods
end
