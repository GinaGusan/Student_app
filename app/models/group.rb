class Group < ActiveRecord::Base
	belongs_to :specialty
	has_many :semesters
	has_many :scholars
end
