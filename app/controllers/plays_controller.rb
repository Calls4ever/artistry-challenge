class PlaysController < ApplicationController
def new
@artists = Artist.all
@instruments = Instrument.all
@play=Play.new
# byebug
end
def create
@play=Play.create(play_params)
redirect_to artist_path(@play.artist_id)
end



private

def play_params
    params.require(:play).permit(:artist_id, :instrument_id)
end

end
