require './lib/reunion'
require './lib/activity'

RSpec.describe Reunion do
  before(:all) do
  end

  describe "Object" do
    it "exists" do
      reunion = Reunion.new("1406 BE")
      expect(reunion).to be_instance_of(Reunion)
    end

    it "has a name" do
      reunion = Reunion.new("1406 BE")
      expect(reunion.name).to eq("1406 BE")
    end
    it "#add_activity" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)
      expect(reunion.activities.count).to eq(1)
    end

    it "#breakout" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      reunion.add_activity(activity_1)
      reunion.total_cost
# => 60

      activity_2 = Activity.new("Drinks")
      activity_2.add_participant("Maria", 60)
      activity_2.add_participant("Luther", 60)
      activity_2.add_participant("Louis", 0)
      reunion.add_activity(activity_2)
p      reunion.total_cost
      reunion.breakout
  puts    reunion.summary
    end
  end
end
