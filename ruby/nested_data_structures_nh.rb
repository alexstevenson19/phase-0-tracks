
# Build a list of some favorite comic book series.
# The overall comic structure will be a hash. Inside the keys will be writers, publishers, or styles.
# lists of comics by writers will be in arrays
# list of indie books will be in a hash, with writers as keys


comics = {
	grant_morrison: ['Doom Patrol', 'Invisibles', 'Flex Mentallo', 'The Filth'],

	greg_rucka: ['Whiteout', 'Gotham Central', 'Lazarus'],

	ed_brubaker:{criminal_series:['Coward', 'Lawless', 'Dead and the Dying', 'Bad_Night',
									'The Sinners', 'Last of the Innocent'],
				fatale:['Death Chases Me', 'Devils Business', 'West of Hell', 
						'Pray For Rain', 'Curse the Demon'],
				brubaker_misc:['Scene of the Crime', 'Incongito', 'Fade Out']
	},
	indie:{evan_dorkin:'Hectic Planet', jhonen_vasquez: 'Squee', matt_kindt: 'mind mgmt'}

}

p comics[:grant_morrison][2]

p comics[:ed_brubaker][:fatale].last 

comics[:greg_rucka].push('Stumptown')
p comics[:greg_rucka]

comics[:indie][:matt_kindt].upcase!
p comics[:indie][:matt_kindt]

comics[:ed_brubaker][:brubaker_misc].push('Gotham Central')
p comics[:ed_brubaker][:brubaker_misc]