class AddOne
    def up_array(arr)
        return nil if arr.empty? || arr.any? {|num| num.negative?}
        one_up = arr.join.to_i + 1
        one_up.to_s.chars.map do |num|
            num.to_i
        end
    end
end