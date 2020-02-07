class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.random_collection(size_of_collection)
    number_of_rows_available = count
    random_offset = rand(number_of_rows_available - size_of_collection)
    offset(random_offset).limit(size_of_collection)
  end

  def self.random
    random_collection(1).first
  end
end
