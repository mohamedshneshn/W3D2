
class Card
    # ALPHABET=("A".."Z").to_a
    ALPHABET=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    attr_reader :value, :reveal
    def initialize (value,reveal=false)
      # @face_up=true
      # @face_down=false
      @value=value
      @reveal=reveal
    end

end











# class Card
#   VALUES = ("A".."Z").to_a

#   def self.shuffled_pairs(num_pairs)
#     values = VALUES

#     while num_pairs > values.length
#       values = values + values
#     end

#     values = values.shuffle.take(num_pairs) * 2
#     values.shuffle!
#     values.map { |val| self.new(val) }
#   end

#   attr_reader :value

#   def initialize(value, revealed = false)
#     @value = value
#     @revealed = revealed
#   end

#   def hide
#     @revealed = false
#   end

#   def to_s
#     revealed? ? value.to_s : " "
#   end

#   def reveal
#     @revealed = true
#   end

#   def revealed?
#     @revealed
#   end

#   def ==(object)
#     object.is_a?(self.class) && object.value == value
#   end
# end
