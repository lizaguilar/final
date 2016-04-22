class ManhattanController < ApplicationController

def index

  @spots = Spot.all

  @spot = @spots.borough(params[:borough]) if params[:borough].present?
end

def show
@spots = Spot.all
@spot = Spot.find(params[:id])



end




end

