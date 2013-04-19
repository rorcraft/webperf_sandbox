class HomeController < ApplicationController

  def index
    render :stream => true
  end

  def javascript
    @response_time = params[:time].presence || 2
    render :stream => true
  end


end
