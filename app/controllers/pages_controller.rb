class PagesController < ApplicationController

  def index
  end

  def about
    render "/pages/about"
  end

  def calendar
    render "pages/calendar"
  end

  # def show
  #   render params[:page]
  # end
end
