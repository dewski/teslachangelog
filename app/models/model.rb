class Model < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  before_validation :generate_slug, on: :create

  def to_s
    name
  end

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
