class Song < ActiveRecord::Base
	# attr_accessor :title, :released, :release_year, :artist_name, :genre

	# @@all = []

	# def initialize(title, released, release_year, artist_name, genre)
	# 	@title = title
	# 	@released = released
	# 	@release_year = release_year
	# 	@artist_name = artist_name
	# 	@genre = genre
	# 	@@all << self
	# end

	# def self.all
	# 	@@all
	# end

	validates :title, presence: true

	# validates :released, include: {true || false}

end