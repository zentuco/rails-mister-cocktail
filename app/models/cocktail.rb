class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  before_validation :set_image

  validates :name, presence: true, uniqueness: true

  private

  def set_image
    if self.image.empty?
      self.image = 'https://source.unsplash.com/collection/1032458'
    end
  end
end
