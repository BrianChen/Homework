class Map

  def initialize
    @map = Array.new
  end

  def assign(key,value)
    key_value = @map.select {|sub_arr| sub_arr[0] == key}
    if key_value == []
      @map.push([key, value])
    else
      @map.map do |sub_arr|
        if sub_arr[0] == key
          sub_arr[1] = value
        end
      end
    end
  end

  def lookup(key)
    @map.each do |sub_arr|
      if sub_arr[0] == key
        sub_arr[1]
      else
        "no key"
      end
    end
  end

  def remove(key)
    @map.reject do |sub_arr|
      sub_arr[0] == key
    end
  end

  def show
    p @map
  end
end

m = Map.new
m.assign("key1", "value1")
m.assign("key2", "value2")
m.assign("key3", "value3")
m.show
m.assign("key3", "new_value3")
m.show
m.remove("key3")
m.show
p m.lookup("key2")
p m.lookup("key1")
m.show
