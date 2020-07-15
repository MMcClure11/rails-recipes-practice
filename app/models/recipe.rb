class Recipe < ApplicationRecord

  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(attributes)
  #   attributes.each do |k, v|
  #     Ingredient.create(name: v[:name], recipe: self)
  #   end
  # end

  validates :name, presence: true
  validates :description, presence: true
  
  include ActiveModel::Validations
  validates_with RecipeValidator

end
