class Group < ActiveRecord::Base
	belongs_to :specialty
	has_one :timetable
	has_many :scholars
end
