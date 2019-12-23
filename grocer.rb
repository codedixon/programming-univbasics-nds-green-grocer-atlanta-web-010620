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
  i = 0
  while i < cart.length
  j = 0
  while j < coupons.length
  if cart[i][:item] == coupons[j][:item] && cart[i][:count] >= coupons[j][:num]
    cart[i][:count] = cart[i][:count] - coupons[j][:num]
    cart << {:item => "#{cart[i][:item]} W/COUPON", 
    :price => coupons[j][:cost] / coupons[j][:num], 
    :clearance => cart[i][:clearance],
    :count => coupons[j][:num]
    }
  end
  j += 1
end
i += 1
end
  return cart
end

def apply_clearance(cart)
  i = 0
  while i < cart.length
  if cart[i][:clearance]
    cart[i][:price] = (cart[i][:price] * 0.8).round(2)
    end
    i += 1
end
  return cart
end

def checkout(cart, coupons)
 new_cart = consolidate_cart(cart)
 new_cart = apply_coupons(new_cart, coupons)
 new_cart = apply_clearance(new_cart)
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  puts new_cart
  return new_cart
end
