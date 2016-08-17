require "recordkeeper/version"

class Array
  def recordkeeper
    arr = self.uniq
    hash = Hash[arr.map { |elm| [elm, 0] } ]
    for i in self
      hash.each do |key, value|
        hash[key] = value + 1 if key == i
      end
    end
    hash
  end
end