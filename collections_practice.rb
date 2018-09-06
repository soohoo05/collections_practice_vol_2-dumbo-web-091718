# your code goes here
def begins_with_r(array)
  beginR=true
array.each do |r|
  if r.start_with?('r')==false
    beginR=false
  end
end
return beginR
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
  end

def first_wa (array)
  array.detect do |word|
    word.to_s.start_with?('wa')
  end
end

def count_elements(array)
  array.uniq.each do |word|
   word[:count] = array.count(word)
 end
end

def remove_non_strings(array)
  array.delete_if {|word| word != word.to_s}
end

def merge_data(keys, data)
merged=[]
data.each do |hash|
  hash.each do |name,input|
    keys.each do |keyValue|
       merged << keyValue.merge(input) if keyValue.values[0] == name
     end
end
end
merged

end


def find_cool(array)
  array.select {|hash|
    hash[:temperature] == "cool"}
end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end
