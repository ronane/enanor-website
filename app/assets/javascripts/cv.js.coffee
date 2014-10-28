# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#
# Toggle experiences & trainings
#
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

#
# Search
#

searchWord = (word) -> 
	jQuery ->
		tags = $('.tags:contains(\''+word+'\')')
		tags.parent().removeClass('searchDontMatch').addClass('searchMatch');

		titles = $('.title:contains(\''+word+'\')')
		titles.parent().removeClass('searchDontMatch').addClass('searchMatch');

		places = $('.place:contains(\''+word+'\')')
		places.parent().removeClass('searchDontMatch').addClass('searchMatch');
		
		notes = $('.note:contains(\''+word+'\')')
		notes.parent().removeClass('searchDontMatch').addClass('searchMatch');

		if (tags.size() + titles.size() + places.size() + notes.size() == 0)
			$('#experiences').append("<p id='noResult'> Aucun résultat, essayez une autre recherche</p>")
		else
			$('#noResult').remove()

search = ->
	jQuery ->
		$('div.experience').removeClass('searchMatch').addClass('searchDontMatch');
		searchValue = $('#searchbox').val()
		keywords = searchValue.split(' ')
		if (searchValue.length > 0) 
			$('#search-clear').show()
		else
			$('#search-clear').hide()
			
		searchWord word for word in keywords 

jQuery -> $('#search-submit').click (event) ->
	event.preventDefault()
	event.stopPropagation()
	search()

jQuery -> $('#search-clear').click (event) ->
	event.preventDefault()
	event.stopPropagation()
	$('#search-clear').hide()
	$('#searchbox').val('')
	search()

