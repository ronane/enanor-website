#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

#Create Training

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


#Create Tags

@tags = {}

def addSkillTo exp, label
	if @tags[label.downcase].nil?
		@tags[label.downcase] = Tag.create!(label:label)
	end
	Skill.create!(experience: exp, tag: @tags[label.downcase])
end
	

#Create Experiences

e = Experience.create!(
	notes: 'Projet personnel', 
	date: DateTime.civil_from_format(:utc,2014), 
	title:'Développement d\'une application d\'arbitrage de Bitcoin')

addSkillTo e, 'Java'
addSkillTo e, 'Bitcoin'
addSkillTo e, 'API REST'
addSkillTo e, 'Agile'
addSkillTo e, 'MySQL'

e = Experience.create!(
	notes: 'Stage de Master 2', 
	place:'STMicroelectronics - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2013), 
	title:'Intégration d\'un framework de sécurité au sein d\'une plate-forme Android ')

addSkillTo e, 'android'
addSkillTo e, 'sécurité'
addSkillTo e, 'performance'
addSkillTo e, 'git'
addSkillTo e, 'test'

e = Experience.create!(
	notes: 'Stage de Master 1',
	place:'ST-Ericsson - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012,9), 
	title:'Portage de l\'application iOS AllScools vers Android')

addSkillTo e, 'Java'
addSkillTo e, 'android'
addSkillTo e, 'xml'

e = Experience.create!(
	notes: 'Projet de fin de Master 1', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2012,4), 
	title:'Application de transcription vidéo : Lisa2')

addSkillTo e, 'audio'
addSkillTo e, 'video'
addSkillTo e, 'java'

e = Experience.create!(
	title: 'Animateur de Cybercommune', 
	place:'Arzon (56)', 
	date: DateTime.civil_from_format(:utc,2011), 
	notes:'Travail d\'été')

addSkillTo e, 'vente'
addSkillTo e, 'assistance'
addSkillTo e, 'dépannage'

e = Experience.create!(
	notes: 'Projet de fin de Licence 3', 
	place:'Université du Maine - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Application de gestion de conférences')

addSkillTo e, 'chef de projet'
addSkillTo e, 'trac'
addSkillTo e, 'svn'
addSkillTo e, 'ruby'
addSkillTo e, 'gtk'

e = Experience.create!(
	notes: 'Stage de fin de DUT', 
	place:'Renault - Le Mans (72)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Système d\'exportation des données du logiciel Producim')

addSkillTo e, 'analyse'
addSkillTo e, 'conception'
addSkillTo e, 'perl'
addSkillTo e, 'batch'
addSkillTo e, 'tk'
addSkillTo e, 'oracle'

e = Experience.create!(
	notes: 'Projet de synthèse de DUT', 
	place:'IUT de Vannes (56)' , 
	date: DateTime.civil_from_format(:utc,2010), 
	title:'Application d\'analyse des contrôles pour l\'inspection du travail du Finistère')

addSkillTo e, 'uml'
addSkillTo e, 'symfony'
addSkillTo e, 'html'
addSkillTo e, 'css'
addSkillTo e, 'php'
addSkillTo e, 'MySQL'


e = Experience.create!(
	notes: 'Projet de fin de 1ère année de DUT', 
	place:'IUT de Vannes (56)' , 
	date: DateTime.civil_from_format(:utc,2009), 
	title:'Client de messagerie type e-mail pour PDA')

addSkillTo e, 'uml'
addSkillTo e, 'java'
addSkillTo e, 'jUnit'

e = Experience.create!(
	notes: 'Projet personnel', 
	date: DateTime.civil_from_format(:utc,2004), 
	title:'Robot de divertissement sur IRC')

addSkillTo e, 'perl'
addSkillTo e, 'jeu'
addSkillTo e, 'irc'

