class Recipe < ApplicationRecord

  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(attributes)

  # end

  validates :name, presence: true
  validates :description, presence: true
  
  include ActiveModel::Validations
  validates_with RecipeValidator

end
