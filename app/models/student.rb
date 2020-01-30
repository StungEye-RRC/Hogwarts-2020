class Student < ApplicationRecord
  belongs_to :house # One to many association

  validates :name, presence: true
  # The FK is also required.
end
