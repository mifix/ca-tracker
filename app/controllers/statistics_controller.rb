class StatisticsController < ApplicationController
  
  before_filter :fetch_player
  
  
  def index
    @statistics = @player.statistics
  end
  

  
  protected
  def fetch_player
    @player = Player.find(params[:player_id])
  end
end
