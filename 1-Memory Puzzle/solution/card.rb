
class Card
    
    
     attr_reader :value, :reveal

    def self.shuffled_pairs(num_pairs)
      alphabet = ("A".."Z").to_a
      values = []
      num_pairs.times do 
        value = alphabet.sample
       values << value << value
       alphabet.delete(value)
      end
      values
    end

    def initialize (value,reveal=false)
      # @face_up=true
      # @face_down=false
      @value=value
      @reveal=reveal
    end

    def face_down
      @reveal = false
    end

    def face_up
      @reveal = true
    end

    def check_reveal
      @reveal
    end

    def show_value
      if check_reveal 
        value.to_s 
      else
        " "
      end
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
