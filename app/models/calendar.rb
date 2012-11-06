class Calendar < ActiveRecord::Base
  attr_accessible :description, :label, :notes, :prayer, :rank, :season
  
  has_many :recipes
  
end
