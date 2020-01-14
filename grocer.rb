def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0 
  while collection[index] do 
    if collection[index][:item] == name 
      return collection[index]
    else 
      nil
    end
    index += 1
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #[
#   {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2},
#   {:item => "KALE", :price => 3.00, :clearance => false, :count => 1}
# ]
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  index = 0 
  while cart[index] do 
    if new_cart[cart[index][:item]]
      new_cart[cart[index][:count]] += 1
    else 
      new_cart[cart[index][:count]] = 1
    end
    index += 1
  end 
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
