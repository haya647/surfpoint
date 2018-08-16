class RootController < ApplicationController
  def new
    @start = Currentpoint.find_by("created_at > ?", 1.hours.ago)
    @gool = Goolpoint.find_by("created_at > ?", 1.minute.ago)
    @points = Point.all
  end

  def create
      @gool_point = Goolpoint.new(lat: params[:goolpoint][:lat],
      lng: params[:goolpoint][:lng])
       if @gool_point.save
       redirect_to root_new_path, notice:  '目的地選択しました'
       else
       redirect_to map_new_path, notice: '目的地選択してください'
       end
   end
end
