def find_item_by_name_in_collection(name, collection)
 items = {}
 i = 0
 while i < collection.length
 items[collection[i][:item]] = collection[i]
 i += 1
 end
 return items[name]
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  full_cart = []
  i = 0
  while i < cart.length
  full_cart[i] = cart[i]
  if full_cart[i][:count]
   full_cart[i][:count] += 1
  else 
   full_cart[i][:count] = 1
    end
    i += 1
  end
  return full_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  count_array = consolidate_cart(cart)
  while i < cart.length
  j = 0
  item_name = find_item_by_name_in_collection(cart[i][:item], cart)
  while j < coupons.length
  if coupons[j][item_name] && cart[i][:count] >= coupons[j][:num]
    cart << {:item => item_name, 
    :price => coupons[j][:cost] / coupons[j][:num], 
    :clearance => cart[i][:clearance],
    :count => cart[i][:count] - coupons[j][:num]
    }
  end
  j += 1
end
i += 1
end
  # REMEMBER: This method **should** update cart
  puts cart
  return cart
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
