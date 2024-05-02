class Recipe < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :category_id, numericality: { other_than: 1, message: "can't be blank"} 
    validates :kondate_id, numericality: { other_than: 1, message: "can't be blank"} 
  end

    has_many :list_recipes
    has_many :recipe_foods
    has_many :foods, through: :recipe_foods
    has_many :lists, through: :list_recipes
    belongs_to :category
    belongs_to :kondate
end