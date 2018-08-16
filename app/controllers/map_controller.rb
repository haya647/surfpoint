class MapController < ApplicationController
  def index
    @points = Point.all
    @current_point = Currentpoint.new

  end

  def new
    @points = Point.all
    @start = Currentpoint.find_by("created_at > ?", 1.hours.ago)
    @gool_point = Goolpoint.new

  end

  def create
         @current_point = Currentpoint.new(lat: params[:currentpoint][:lat],
            lng: params[:currentpoint][:lng],name:params[:currentpoint][:name])
         if @current_point.save
           redirect_to map_new_path, notice:  '現在地を登録しました'
         else
           redirect_to map_index_path, notice: '現在地を登録してください'
         end
     end


end
