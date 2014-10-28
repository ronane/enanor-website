class Tag < ActiveRecord::Base
	has_many :skills
	has_many :experiences, through: :skills
end
