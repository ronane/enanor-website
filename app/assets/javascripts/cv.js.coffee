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
	
	#Register search events	
	jQuery ->
		$('#search-submit').click (event) ->
			search()
			event.preventDefault()
	jQuery -> 
		$('#search-clear').click (event) ->
			$('#search-clear').hide()
			$('#searchbox').val('')
			search()
			event.preventDefault()

$(document).ready(ready);
$(document).on('page:load', ready);

#
# Search functions
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

		noResult = $('#noResult')

		if (tags.size() + titles.size() + places.size() + notes.size() == 0)
			noResultElem = $("<p id='noResult'> Aucun résultat, essayez une autre recherche</p>")

			if (!noResult.size())
				noResultElem.appendTo('#experiences')
			
			$('#noResult').effect("highlight",{},2000)

		else 
			noResult.remove()

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


