require 'pry'
class Hash
  def keys_of(*arguments)
      arr = []
      the_hash = each_value {|argy| key(argy)}
      arguments.each do |places|
      value = places
      key = key(value)
      arr << the_hash.select{|k,v| v == value}.map{|i| i[0]}
    end
    arr.flatten
  end
end