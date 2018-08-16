class PointsaveController < ApplicationController
  def index
   @pointsave = Point.new
     @points = Point.all
  end
  def create
   @pointsave = Point.new(lat: params[:point][:lat],
      lng: params[:point][:lng],name:params[:point][:name])
   if @pointsave.save
     redirect_to pointsave_index_path, notice:  'ポイント登録しました'
   else
     redirect_to pointsave_index_path, notice: 'ポイント登録してください'
   end
  end

def new
  @points = Point.all
end


end
