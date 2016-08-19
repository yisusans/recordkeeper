require "recordkeeper/version"

module Recordkeeper
  Array.class_eval do

    def recordkeeper
      hash = array_to_hash
      for i in self
        hash.each do |key, value|
          hash[key] = value + 1 if key == i
        end
      end
      hash
    end

    def array_to_hash
      Hash[self.map { |elm| [elm, 0] } ]
    end
  end
end
