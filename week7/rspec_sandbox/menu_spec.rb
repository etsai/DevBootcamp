require 'rspec'
require_relative 'menu'

# describe Menu do
#   context
# end
# allows us to organize the test with describe and context


describe Menu do
  let(:name) { "lunch" }
  let(:menu) { Menu.new(name) }
  context "#name" do
    it "returns the name" do
      expect(menu.name).to eq name
    end

    it "changes the name" do
      menu.name = "dinner"
      expect(menu.name).to eq "dinner"
    end
  end
end

describe MenuItem do
  let(:menu_item) { MenuItem.new("lobster") }
  context "#title" do
    it "returns the title" do
      expect(menu_item.title).to eq "lobster"
    end
  end
end



# anything within the it block what the actual test.
# let is a way to define a variable.
# the varaible is available to the code.
# expect: way of expecting whatever is given to be given back.
