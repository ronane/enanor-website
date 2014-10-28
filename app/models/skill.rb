class Skill < ActiveRecord::Base
  belongs_to :experience
  belongs_to :tag
end
