# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#   min_value = ""
#   name_hash.each do |name, value|
#     if name == :name_hash && value.sort_by.first 
#       return name 
#     else name == :name_hash && value.empty?
#       nil
#   end
#   min_value
# end
# end

def key_for_min_value(name_hash)
  lowest_key = nil
  lowest_value = Float::INFINITY
  name_hash.each do |k, v|
    if v < lowest_value
      lowest_value = v
      lowest_key = k
    end
  end
  lowest_key
end