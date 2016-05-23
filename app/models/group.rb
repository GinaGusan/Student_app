class Group < ActiveRecord::Base
	belongs_to :specialty
	has_one :timetable, dependent: :destroy
	has_many :scholars, dependent: :destroy
end
