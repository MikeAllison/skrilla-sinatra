class LocalTime
  private

  def self.now
    Time.now + TIME_ZONE_ADJUST
  end
end

class Database
  private

  def self.get_stats
    stats = { :"Total Rows" => 0 }
    stats[:"Total Users"] = User.all.size
    stats.each_value { |v| stats[:"Total Rows"] += v }
    stats
  end
end
