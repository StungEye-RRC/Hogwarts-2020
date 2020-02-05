class Teacher < ApplicationRecord
  belongs_to :house

  validates :name, presence: true
end
