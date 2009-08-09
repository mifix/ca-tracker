class Player < ActiveRecord::Base
  has_many :statistics
  
  after_create :fetch_statistics
  
  
  protected
  
  def fetch_statistics
    fetcher = StatisticFetcher.new(name)
    statistics.build.insert_data_from_website fetcher.data
  end
  
end
