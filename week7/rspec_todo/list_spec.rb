require "rspec"

require_relative "list"
require_relative "task"

describe List do
  let(:title) { "Silly List" }
  let(:task1) { Task.new("jiggle") }
  let(:task2) { Task.new("jiggle") }
  let(:list) { List.new(title, [task1, task2]) }

  describe "#initialize" do
    it "takes a title for its first argument" do
      List.new("Little List").should be_an_instance_of List
    end

    it "requires one argument" do
      expect { List.new }.to raise_error(ArgumentError)
    end
  end

  describe "#add_task" do
    it "adds task to collection of task" do
      expect {
        list.add_task("eat")
        }.to change{ list.tasks.count }.by(1)
    end
  end

  describe "#complete_task" do
    it "will be false of task index doesn't exist" do
      expect(list.complete_task(200)).to be_false
    end

    it "will be complete task if index exists" do
      expect(list.complete_task(0)).to be_true
    end
  end

  describe "#delete_task" do
    it "will delete task from list" do
      list.delete_task(0)
      expect(list.tasks).not_to include [task1]
    end
  end

  describe "#completed_tasks" do
    it "will return completed tasks" do
      list.complete_task(0)
      expect(list.completed_tasks).to eql [task1]
    end
  end

  describe "#incomplete_tasks" do
    it "will return incomplete tasks" do
      list.complete_task(0)
      expect(list.incomplete_tasks).to eql [task2]
    end
  end

end