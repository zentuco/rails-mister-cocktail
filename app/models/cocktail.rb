class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  def list_ingredients
    ingredients.map(&:name).join(', ')
  end
end
