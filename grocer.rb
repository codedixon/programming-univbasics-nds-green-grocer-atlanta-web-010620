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
  coupons_hash = {}
  #count_hash = consolidate_cart(cart)
  j = 0
  while j < coupons.length
  coupons_hash[coupons[j][:item]] = coupons[j][:num]
  j += 1
end
#k = 0
 #while k < cart.length
  #count_hash[cart[k][:item]] = cart[k][:count]
  #k += 1
#end
  #puts count_hash
  i = 0
  #while i < cart.length
  #if cart[i][:count] < cart[i][:num]
  #i += 1
#end
  # REMEMBER: This method **should** update cart
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
