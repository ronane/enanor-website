class Experience < ActiveRecord::Base
	validates :title, :date, presence: true
	has_many :skills
	has_many :tags, through: :skills
end
