class House < ApplicationRecord
  has_many :students
  has_many :teachers

  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
