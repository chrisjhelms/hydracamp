class Zombie < ActiveRecord::Base
  attr_accessible :graveyard, :name
  
  validates :name, :presence => true
  validates_uniqueness_of :name
end
