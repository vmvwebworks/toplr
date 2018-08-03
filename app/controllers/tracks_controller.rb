class TracksController < ApplicationController
  def create
    puts " eeeeeeeo"
    @track = current_user.tracks.new(track_params)
    @track.save
    redirect_to root_path
  end
  private
    def track_params
      params.require(:track).permit(:name, :link, :sort)
    end
end
