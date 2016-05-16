class Timetable < ActiveRecord::Base
	belongs_to :group
	has_many :courses
end
