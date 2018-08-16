class SongsController < ApplicationController

	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def create
		if @song = Song.new(song_params)
			@song.save
			redirect_to @song
		else
			render :new
		end
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		if @song = Song.find(params[:id])
			@song.update(song_params)
			redirect_to @song
		else
			render :edit
		end
	end

	def delete
		@song = Song.find(params[:id])
		@song.destroy
		redirect_to song_path
	end

	private

	  	def song_params
    		params.require(:song).permit(:title, :release_year, :released, :genre, :artist_name)
  	  	end

end