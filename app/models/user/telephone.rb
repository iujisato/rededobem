class User::Telephone
 def initialize(hash)
   @telephones = hash.symbolize_keys
 end
end
