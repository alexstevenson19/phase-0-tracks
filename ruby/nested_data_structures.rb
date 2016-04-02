
# Index Top Row of book shelf

# four cubes 1..4 (left to right)

=begin cube 1 contents: reading materials, stock photo books, paperback reference, Stay Free magazine.
	misc items: clock, PEZ_puzzle
=end

=begin cube 2: reading materials art and film textbooks, graphic design magazines.
	souvenir beverages - canned coffee Mucha designs, children's beer bottles,
	misc: mini barrel of monkeys
=end

=begin cube 3: mounted Stay Free cover Apple ad spoof. inside "magazine holder" [Maps] travel books-(including Cool Spots zine)
	cook books, photo album
=end

=begin cube 4: One yellow Ikea box: photos from Japan, two blue binder albums, mini album from Dad.
=end

bookshelf_top_row = {
	cube1:{
		books1:{ 
				reference_books: 5, 
				stock_photo_books: 6,
				graphic_design_zine: 14
		},
		misc_1:['clock', 'PEZ_puzzle']
	},
	cube2:{
		books2:{ 
				text_books: 8,
				graphic_magazines: 12
		},
		souvenir_beverages:{
				mucha_coffee: 5,
				childrens_beer: 3
		},
		misc_2:[]
	},
	cube3:{
		magazine_holder:["maps","Anasazi_text"],
		misc_3:["poster_board", "large_photos"]
	},
	cube4:{
		storage_box:{
			blue_photo_albums: 2,
			fuji_photo_collectors: "many",
			dad_photo_album: 1
				}
	}

}
# print "poster_board"
p bookshelf_top_row [:cube3][:misc_3][0]

# add content to misc_2
bookshelf_top_row[:cube2][:misc_2].push ("mini_barrel_monkeys")

# print all of cube2 contents
p bookshelf_top_row [:cube2]

# modify string value of fuji_photo_collectors key
p bookshelf_top_row[:cube4][:storage_box][:fuji_photo_collectors].upcase

# print value of graphic_design_zine key
p bookshelf_top_row[:cube1][:books1][:graphic_design_zine]

# change value of dad_photo_album
bookshelf_top_row[:cube4][:storage_box][:dad_photo_album] = 2

# print/check the change made to dad_photo_album value
p bookshelf_top_row[:cube4][:storage_box][:dad_photo_album]



