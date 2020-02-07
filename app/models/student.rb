class Student < ApplicationRecord
  belongs_to :house # One to many association
  has_many :appointments
  has_many :teachers, through: :appointments

  validates :name, presence: true
  # The FK is also required.
end
