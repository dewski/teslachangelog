class Model < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
end