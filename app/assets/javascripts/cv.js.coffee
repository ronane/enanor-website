# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->
	#Toggle Experiences
	jQuery ->
		$('#experienceButton').text('▲')
		$('#experiences').hide()
		$('#experiences').slideToggle()
		$('#toggleExperiences').click ->
			icon = $('#experienceButton').text()
			$('#experiences').slideToggle()
			$('#experienceButton').text(if icon == '▼' then '▲' else '▼')

	#Toggle Trainings 
	jQuery ->
		$('#trainingButton').text('▲')
		$('#trainings').hide()
		$('#trainings').slideToggle()
		$('#toggleTrainings').click ->
			icon = $('#trainingButton').text()
			$('#trainings').slideToggle()
			$('#trainingButton').text(if icon == '▼' then '▲' else '▼')

$(document).ready(ready);
$(document).on('page:load', ready);
