class Stack
  def initialize
    @my_stack = Array.new
  end

  def add(el)
    @my_stack.push(el)
  end

  def remove
    @my_stack.pop
  end

  def show
    puts @my_stack
  end
end

s = Stack.new
s.add("Tray1")
s.add("Tray2")
s.show
s.remove
s.add("Tray3")
s.remove
s.add("Tray4")
s.show
