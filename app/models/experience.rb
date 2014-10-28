class Experience < ActiveRecord::Base
	has_many :skills
	has_many :tags, through: :skills
end
