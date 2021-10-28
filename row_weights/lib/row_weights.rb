class RowWeights
    def row_weights(array)
        even = []
        odd = []
        array.each_with_index do |element, index|
            if index.even?
                even << element
            else
                odd << element
            end
        end
        [even.sum, odd.sum]
    end
end