class Skill < ActiveRecord::Base
  belongs_to :experience
  belongs_to :tag
  validates :experience, :tag, presence: true
end
