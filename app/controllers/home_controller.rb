class HomeController < ApplicationController
  layout 'application'
  
  def index
  end
  
  def show
    render :action => params[:page]
  end

end
