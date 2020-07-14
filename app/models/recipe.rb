class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  
  include ActiveModel::Validations
  validates_with RecipeValidator

end
