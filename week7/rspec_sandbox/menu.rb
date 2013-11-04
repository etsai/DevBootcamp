class Menu
  attr_accessor :name
  def initialize name
   @name = name
 end
end

class MenuItem
attr_reader :title

  def initialize title
    @title = title
  end

end

### driver code
@menu = Menu.new "lunch"
puts @menu.name == "lunch"
@menu.name = "dinner"
puts @menu.name == "dinner"