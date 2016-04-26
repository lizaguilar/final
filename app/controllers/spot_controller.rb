class SpotController < ApplicationController

def index
@spots = Spot.all
end

def show
@spots = Spot.all
@spot = Spot.find(params[:id])
end


end
