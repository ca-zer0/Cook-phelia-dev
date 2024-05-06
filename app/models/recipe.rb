class Recipe < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :category_id, numericality: { other_than: 1, message: "can't be blank"} 
    validates :kondate_id, numericality: { other_than: 1, message: "can't be blank"} 
    validates :image
  end
  
  belongs_to :category
  belongs_to :kondate
  has_many :foods
  has_one_attached :image
end
