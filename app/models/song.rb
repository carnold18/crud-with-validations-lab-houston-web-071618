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
	validates :title, uniqueness: { scope: [:artist_name, :release_year] }
	validates :released, inclusion: {in: [true, false]}

	validates :artist_name, presence: true


	# validates :release_year, length: { minimum: 100 }
 #  	validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

	# validates :released, include: {true || false}

end

# Cannot be repeated by the same artist in the same year
# released, a boolean describing whether the song was ever officially released.
# Must be true or false
# release_year, an integer
# Optional if released is false
# Must not be blank if released is true
# Must be less than or equal to the current year