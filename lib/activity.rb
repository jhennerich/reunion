require 'pry'
class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name= name
    @participants = {}
  end

  def add_participant(name,cost_of_activity)
    @participants[name] = cost_of_activity
  end

  def total_cost
    total_cost = 0
    @participants.each do |key, value|
      total_cost += value
    end
    total_cost
  end

  def split
    total_cost / @participants.count
  end

  def owed
    share = total_cost - split
    owed_hash = {}
    @participants.map do |person, money|
      owed_hash[person] = (split - money)
    end
    owed_hash
#    cost = split
#    @participants.each do |key, value|
#        @participants[key] = cost - value
#    end
  end


end
