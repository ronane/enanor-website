class CvController < ApplicationController
	def index
		@experiences = Experience.all
	end
end
