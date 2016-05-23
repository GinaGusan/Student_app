class Faculty < ActiveRecord::Base
	has_many :specialties, dependent: :destroy
	
	belongs_to :university
end
