#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Experience.create!(
	notes: 'Stage de Master 2', 
	place:'STMicroelectronics - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2013), 
	title:'Intégration d\'un framework de sécurité au sein d\'une plate-forme Android ')

Experience.create!(
	notes: 'Stage de Master 1',
	place:'ST-Ericsson - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012,9), 
	title:'Portage de l\'application iOS AllScools vers Android')

Experience.create!(
	notes: 'Projet de fin de Master 1', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012,4), 
	title:'Application de transcription vidéo : Lisa2')

Experience.create!(
	title: 'Animateur de Cybercommune', 
	place:'Arzon (56)', 
	date: DateTime.civil_from_format(:utc,2011), 
	notes:'Travail d\'été')

Experience.create!(
	notes: 'Projet de fin de Licence 3', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Application de gestion de conférences')

Experience.create!(
	notes: 'Stage de fin de DUT', 
	place:'Renault - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Système d\'exportation des données du logiciel Producim')

Experience.create!(
	notes: 'Projet de synthèse de DUT', 
	place:'IUT de Vannes (56)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Application d\'analyse des contrôles pour l\'inspection du travail du Finistère')

Experience.create!(
	notes: 'Projet de fin de 1ère année de DUT', 
	place:'IUT de Vannes (56)' , 
	date: DateTime.civil_from_format(:utc,2009), 
	title:'Client de messagerie type e-mail pour PDA')

Experience.create!(
	notes: 'Projet personnel', 
	date: DateTime.civil_from_format(:utc,2004), 
	title:'Robot de divertissement sur IRC')

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

tags = ['android','sécurité','performance','java','test','html','css','perl','xml','audio','video','libre','opensource','vente','assitance','dépannage','chef de projet','trac','svn','git','ruby','gtk','Tk','oracle','uml','conception','symfony','php','MySQL','jUnit','DokuWiki']

tags.each { |t|
	Tag.create!(tag:t)
}
