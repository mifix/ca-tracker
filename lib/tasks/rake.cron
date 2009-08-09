task :cron => :environment do
  
  Player.all.each do |player|
    fetcher = StatisticFetcher.new(player.name)
    player.statistics.build.insert_data_from_website fetcher.data
  end
  
end
