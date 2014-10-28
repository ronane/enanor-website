class Tag < ActiveRecord::Base
	validates :label, uniqueness: true, presence: true
	has_many :skills
	has_many :experiences, through: :skills
end
