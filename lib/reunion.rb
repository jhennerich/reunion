require 'pry'
class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    total = 0
    @activities.each do |key,value|
      total = total + key.participants.values.sum
    end
    total
  end

  def breakout
    final_owed = {}
    @activities.each do |activity|
       activity.owed.each do |person, money|
#      binding.pry
         final_owed[person] = money
       end
     end
     final_owed

#    @amount_owed = {}
#    @activities.each do |activity|
#      @amount_owed = activity.owed
#    end
#    return @amount_owed
  end

  def summary
    summaries = []
    breakout.each do |person, money|
      summaries << "#{person}: #{money}\n"
    end
  end
end
