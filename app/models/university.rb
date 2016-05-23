class University < ActiveRecord::Base
	has_many :faculties, dependent: :destroy
	has_many :teachers, dependent: :destroy
end
