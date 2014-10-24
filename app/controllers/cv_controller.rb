class CvController < ApplicationController
	def index
		@experiences = Experience.order(:date).reverse
		@trainings = Training.order(:start_date).reverse
	end
end
