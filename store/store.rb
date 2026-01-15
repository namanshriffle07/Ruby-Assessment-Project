require 'debug/prelude'

class Store
  def initialize
    @products = []
    @users = []
    seed_products
  end

  def products
    @products
  end

  def users
    @users
  end

  def seed_products
    product_details = [{"id"=>1,"name"=>"leptop","price"=>1000,"quantity"=>5},{"id"=>2,"name"=>"Macboor Air","price"=>10000,"quantity"=>8}]
    product_details.each do |row|   
      @products << Product.new(row["id"],row["name"],row["price"],row["quantity"])
    end
  end

  def add_user(user)
    @users << user
  end

  def find_user(email)
    @users.find { |u| u.email == email }
  end

  def find_product(id)
    @products.find { |p| p.id == id }
  end
end