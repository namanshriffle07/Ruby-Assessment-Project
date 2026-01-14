class Cart
  def initialize
    @items = Hash.new(0)
  end

  def add_product(product, qty)
    raise "Not enough stock" if product.quantity < qty
    @items[product] +=  qty
  end

  def empty?
    @items.empty?
  end

  def total
    @items.sum { |product, qty| product.price * qty }
  end

  def checkout
    @items.each do |product, qty|
      product.quantity -= qty
    end
    order = Order.new(@items)
    @items.clear
    order
  end

  def view
    @items.each do |product, qty|
      puts "Product: #{product.name}  Quantity: #{qty}"
    end
  end
end