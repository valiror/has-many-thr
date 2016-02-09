class Student < ActiveRecord::Base
    has_many :apprenticeships 
	has_many :teachers, :through => :apprenticeships
end
