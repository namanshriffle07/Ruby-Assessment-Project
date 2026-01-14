class Product
  def id
    @id 
  end

  def name
    @name
  end

  def price
    @price
  end

  def quantity
    @quantity
  end

  def id=(id)
    @id = id
  end

  def name=(name)
    @name = name
  end

  def price=(price)
    @price = price
  end

  def quantity=(quantity)
    @quantity = quantity
  end

  def initialize(id, name, price, quantity)
    raise "Invalid price" if price < 0
    raise "Invalid quantity" if quantity < 0

    @id = id
    @name = name
    @price = price
    @quantity = quantity
  end

  def available?
    @quantity > 0
  end
end