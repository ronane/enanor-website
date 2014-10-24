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
	date: DateTime.civil_from_format(:utc,2013), 
	notes:'Intégration d\'un framework de sécurité au sein d\'une plate-forme Android ')
Experience.create!(
	title: 'Stage de développement Android', place:'ST-Ericsson - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012), 
	notes:'Portage de l\'application iOS AllScools vers Android')
Experience.create!(
	title: 'Projet de fin de Master 1 : Lisa2', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012), 
	notes:'Développement d\'une application de transcription vidéo')
Experience.create!(
	title: 'Animateur de Cybercommune', place:'Arzon (56)' , 
	date: DateTime.civil_from_format(:utc,2011), 
	notes:'Accueil et annimations dans une salle équipée de postes informatiques')
Experience.create!(
	title: 'Projet de fin de Licence 3', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	notes:'Développement d\'une application de gestion de conférences')

Training.create!(
	title: 'Master Informatique',
	place: 'Université du Maine - Le Mans (72)',
	start_date: DateTime.civil_from_format(:utc,2011),
	end_date: DateTime.civil_from_format(:utc,2013))
Training.create!(
	title: 'Licence 3 Informatique',
	place: 'Université du Maine - Le Mans (72)',
	start_date: DateTime.civil_from_format(:utc,2010),
	end_date: DateTime.civil_from_format(:utc,2011))
Training.create!(
	title: 'DUT Informatique',
	place: 'IUT de Vannes (56)',
	start_date: DateTime.civil_from_format(:utc,2008),
	end_date: DateTime.civil_from_format(:utc,2010))
Training.create!(
	title: 'Licence de Physique-Chimie',
	place: 'Université du Maine - Le Mans (72)',
	start_date: DateTime.civil_from_format(:utc,2006),
	end_date: DateTime.civil_from_format(:utc,2008))
Training.create!(
	title: 'Baccalauréat Scientifique, mention AB',
	place: 'Lycée Sud - Le Mans (72)',
	start_date: DateTime.civil_from_format(:utc,2005))

