class CreateStatistics < ActiveRecord::Migration
  def self.up
    create_table :statistics do |t|
      t.integer :player_id
      t.integer :rank
      t.float :kd
      t.integer :exp
      t.integer :gp
      t.integer :kills
      t.integer :deaths
      t.integer :headshots
      t.integer :matches
      t.integer :matches_won
      t.integer :matches_lost
      t.integer :matches_forfeited
      t.float :kills_per_match
      t.float :deaths_per_match
      t.integer :kill_streak
      t.integer :multi_kills
      t.integer :ultra_kills
      t.integer :fantastic
      t.integer :unbelievable
      t.integer :unbelievable_plus
      t.timestamps
    end
  end
  
  def self.down
    drop_table :statistics
  end
end
