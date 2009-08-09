class StatisticFetcher

  def initialize(player_name)
    @player_name = player_name
  end
  
  def data
    prepare_scraper
    scrape
  end
  
  
  protected
    
  def prepare_scraper
    Scraper::Base.parser :html_parser
  
    @scraper = Scraper.define do
      process "dd:nth-child(6)", :rank => :text
      process "dd:nth-child(8)", :kd => :text 
      process "dd:nth-child(10)", :exp => :text
      process "dd.end", :gp => :text
      process "#divTab1 .first span", :kills => :text
      process "#divTab1 li:nth-child(2) span", :deaths => :text
      process "#divTab1 li:nth-child(4) span", :headshots => :text
      process "#divTab1 li:nth-child(6) span", :matches_won => :text
      process "#divTab1 li:nth-child(7) span", :matches_lost => :text
      process "#divTab1 li:nth-child(8) span", :matches_forfeited => :text
      process "#divTab1 li:nth-child(9) span", :kills_per_match => :text
      process "#divTab1 li:nth-child(10) span", :deaths_per_match => :text
      process "#divTab1 .end span", :kill_streak => :text
      
      process "#divTab3 .first span", :multi_kills => :text
      process "#divTab3 li:nth-child(2) span", :ultra_kills => :text
      process "#divTab3 li:nth-child(3) span", :fantastic => :text
      process "#divTab3 li:nth-child(4) span", :unbelievable => :text
      process "#divTab3 li:nth-child(5) span", :unbelievable_plus => :text
      
      result :rank, :kd, :exp, :gp, :kills, :deaths, :headshots, :matches_won, :matches_lost, :matches_forfeited, :kills_per_match, :deaths_per_match, :kill_streak, :multi_kills, :ultra_kills, :fantastic, :unbelievable, :unbelievable_plus
    end
  end
  
  def scrape
    uri = URI.parse("http://combatarms.nexoneu.com/Modules/Community/Profile/Profile.aspx?NickName=#{@player_name}")
    @scraper.scrape(uri)
  end
  
end