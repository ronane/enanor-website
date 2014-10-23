#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Experience.create!(
	title: 'Stage d\'ingégration SEAndroid', 
	place:'STMicroelectronics - Le Mans (72)' , 
	date:DateTime.civil_from_format(:local,2013), 
	notes:'Intégration d\'un framework de sécurité au sein d\'une plate-forme Android ')
Experience.create!(
	title: 'Stage de développement Android', place:'ST-Ericsson - Le Mans (72)' , 
	date:DateTime.civil_from_format(:local,2012), 
	notes:'Portage de l\'application iOS AllScools vers Android')
Experience.create!(
	title: 'Projet de fin de Master 1 : Lisa2', 
	place:'Université du Maine (72)' , 
	date:DateTime.civil_from_format(:local,2012), 
	notes:'Développement d\'une application de transcription vidéo')
Experience.create!(
	title: 'Animateur de Cybercommune', place:'Arzon (56)' , 
	date:DateTime.civil_from_format(:local,2011), 
	notes:'Accueil et annimations dans une salle équipée de postes informatiques')
Experience.create!(
	title: 'Projet de fin de Licence 3', 
	place:'Université du Maine (72)' , 
	date:DateTime.civil_from_format(:local,2010), 
	notes:'Développement d\'une application de gestion de conférences')

