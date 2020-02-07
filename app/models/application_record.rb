class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.random_collection(count)
    offset = rand(self.count - count)
    self.offset(offset).limit(count)
  end

  def self.random
    random_collection(1).first
  end
end
