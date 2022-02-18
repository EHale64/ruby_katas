class ArrayDiff
    def array_diff(a, b)
        b.each {|num| a.delete(num)}
        a
    end
end