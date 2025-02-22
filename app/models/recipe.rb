class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :kondate
  has_many :foods, dependent: :destroy
  has_one_attached :image
  has_many :lists
  has_many :users, through: :lists
end
