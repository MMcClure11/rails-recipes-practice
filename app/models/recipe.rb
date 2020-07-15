class Recipe < ApplicationRecord

  has_many :ingredients

  validates :name, presence: true
  validates :description, presence: true
  
  include ActiveModel::Validations
  validates_with RecipeValidator

end
