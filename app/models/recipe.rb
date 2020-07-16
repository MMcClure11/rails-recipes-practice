class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }

  # def ingredients_attributes=(attributes)
  #   attributes.each do |k, v|
  #     Ingredient.create(name: v[:name], recipe: self)
  #   end
  # end

  validates :name, presence: true
  validates :description, presence: true
  
  # include ActiveModel::Validations
  # validates_with RecipeValidator

end
