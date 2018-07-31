require './lib/vendor'
class Market
  attr_reader :name,
              :vendors
  def initialize(name)
    @name = name
    @vendors = [ ]
  end

  def add_vendor(vendor)
    @vendors.push(vendor)
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.map do |vendor|
      if vendor.inventory.include?(item)
        vendor
      end
    end.compact
  end

#   def add_hash
#     @vendors.map do |vendor|
#       @vendors.map do |vendor|
#       vendor.inventory.values
#     end
#   end
# end

  def one_list
    @vendors.map do |vendor|
      vendor.inventory.keys.sort
    end.flatten
  end

  def sorted_item_list
    one_list.sort.uniq
  end

  def total
    @vendors.map do |vendor|
      @vendors.map do |vendor|
      vendor.inventory
    end
   end
  end
  def total_inventory
    total.flatten.uniq
  end

end
