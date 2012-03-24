class Pet < ActiveRecord::Base
  # validates_uniqueness_of :name
  validates :name, :presence => true, :uniqueness => true
end

