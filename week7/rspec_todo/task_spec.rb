require "rspec"

require_relative "task"

describe Task do

  let(:description) { "Walk the giraffe" }
  let(:task)        { Task.new(description) }

  describe "#initialize" do
    it "takes a description for its first argument" do
      Task.new("Feed the parakeet").should be_an_instance_of Task
    end

    it "requires one argument" do
      expect { Task.new }.to raise_error(ArgumentError)
    end
  end

  describe "#description" do
    it "returns the correct description for the task" do
      task.description.should eq description
    end
  end

  describe "#complete?" do
    it "returns false for incomplete tasks" do
      task.complete?.should be_false
    end

    it "returns true for completed tasks" do
      task.complete!
      task.complete?.should be_true
    end
  end

  describe "#complete!" do
    it "changes the task from incomplete to completed" do
      #
      # Note the use of the `be_complete` method here.
      # This is some RSpec goodness which expects a
      # method `complete?` to be defined which returns
      # true or false.
      #
      task.should_not be_complete
      task.complete!
      task.should be_complete
    end
  end
end