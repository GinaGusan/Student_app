class Specialty < ActiveRecord::Base
	belongs_to :faculty
	has_many :groups, dependent: :destroy
end
