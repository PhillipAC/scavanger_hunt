class PagesController < ApplicationController
  
  def home
    authorize! :home, :pages
  end
  
  def live
    authorize! :live, :pages
    @teams = Team.all
    @locations = Location.all
    @time = Time.now
  end
  
  def test
    authorize! :home, :pages    
  end
end
