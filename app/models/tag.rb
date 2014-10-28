class Tag < ActiveRecord::Base
	validates :tag, uniqueness: true
	has_many :skills
	has_many :experiences, through: :skills
end
