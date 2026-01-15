require('./store/product')

class Order
  def initialize
    @orders = Hash.new(0)
    @timestamp = Time.now
  end

  def orders=(orders)
    @orders = orders
  end

  def details
    puts "Order placed at #{@timestamp}"
    @orders.each do |product, qty|
      puts "Product:#{product.name}  Quantity: #{qty}"
    end
  end
end