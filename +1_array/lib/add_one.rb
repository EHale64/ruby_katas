class AddOne
    def up_array(arr)
        return nil if arr.empty? || arr.any? {|num| num > 9 || num < 0}
        arr.join.next.chars.map do |num|
            num.to_i
        end
    end
end