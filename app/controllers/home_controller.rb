class HomeController < ApplicationController
  layout false

  def index
    render :stream => true
  end

  def javascript
    response_time = params[:time].presence || 2
    sleep response_time
  end


end
