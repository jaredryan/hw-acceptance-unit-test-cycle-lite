# a controller method to receive the click on "Find With Same Director", and grab the id (for example) of the movie that is the subject of the match (i.e. the one we're trying to find movies similar to)


require 'rails_helper'

describe MoviesController do
	before(:each) do
	 	@fake_movie = mock('Movie', {:title=>'title', :id=>'1', :director=>'director'})
	end

	describe 'Click on Find with Same Director' do
		it 'gets the director name from the movie from parameters' do
			get director_path(@fake_movie)
			expect(assigns(:director)). to eq(@fake_movie.director)


		# it 'calls the model method that gets movies with same director'
		# 	STUB this
		# it 'selects the director template for rendering'
		# 	get director_path(@fake_movie)
		# 	expect(response).to render_template(director_path(movie))
		# it 'displays those movies in the director page'
		end
	end
end


# a controller method to receive the click on "Find With Same Director", 
# and grab the id (for example) of the movie that is the subject of the 
# match (i.e. the one we're trying to find movies similar to)



# a model method in the Movie model to find movies whose director matches
# that of the current movie. Note: This implies that you should write at
# least 2 specs for your controller: 1) When the specified movie has a
# director, it should... 2) When the specified movie has no director, it
# should ... and 2 for your model: 1) it should find movies by the same
# director and 2) it should not find movies by different directors.