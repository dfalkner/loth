class Recipe < ActiveRecord::Base
  attr_accessible :calendar_id, :content, :filename, :label, :seq
  
  belongs_to :calendars
end
