require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do #what is this lmao
    describe "#laundry?" do
      it "should return true if task title is laundry" do
        # create test data -> create a task
        task = Task.create(title: "laundry", description: "laundry")

        # expect the created task to return true when laundry is called
        expect(task.laundry?).to be(true)
      end

      it "returns true when the description is laundry" do
        task = Task.create(title: "Clean my clothes", description: "laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns false when neither the description nor title is laundry" do
        task = Task.create(title: "clean clothes", description: "clean clothes")

        expect(task.laundry?).to be(false)
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create(title: "this is laundry", description: "yes")

        expect(task.laundry?).to be(true)
      end

      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create(title: "this is LAunDRy", description: "yes")

        expect(task.laundry?).to be(true)
      end

      it "returns true when the description contains the word laundry" do
        task = Task.create(title: "clothes", description: "this is laundry")

        expect(task.laundry?).to be(true)
      end

      it "is case insensitive when checking if the description contains the word laundry" do
        task = Task.create(title: "clothes", description: "this is lAUnDrY")

        expect(task.laundry?).to be(true)
      end
    end
  end
end