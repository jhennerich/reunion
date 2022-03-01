require "./lib/activity"

RSpec.describe Activity do
  before(:all) do
  end

  describe "Object" do
    it "exists" do
      activity = Activity.new("Brunch")
      expect(activity).to be_instance_of(Activity)
    end

    it "#add_participant" do

      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)
p      activity.participants
p      activity.total_cost
p      activity.split
p      activity.owed
    end
  end
end
