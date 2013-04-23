class HomeController < ApplicationController

  def index
    render :stream => true
  end

  def javascript
    @response_time = params[:time].presence || 2
    response.headers["Content-Type"] = "application/x-javascript"
    render :stream => true, layout: false
  end


end
