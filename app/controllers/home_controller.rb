class HomeController < ApplicationController
  def index
    @users = User.all
    @courses = Course.all
    @units = Unit.all
    @views = Impression.all
  end
  
  def about
  
  end
end
