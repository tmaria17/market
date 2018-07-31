class Vendor
  attr_reader :name,
               :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(key)
    @inventory[key]
  end

  def stock(key,value)
    @inventory[key] += value
  end

end
