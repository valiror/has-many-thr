class Teacher < ActiveRecord::Base
	has_many :apprenticeships
	has_many :students, :through => :apprenticeships
end
