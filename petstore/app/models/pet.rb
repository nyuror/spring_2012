class Pet < ActiveRecord::Base
  # validates_uniqueness_of :name
  validates :name, :presence => true, :uniqueness => true
    # validates :species, :name, :sex, :pet_number, :presence => true
    # validates :sex, :inclusion => { :in => %W[m f] }
    # belongs_to :pet_owner
end

