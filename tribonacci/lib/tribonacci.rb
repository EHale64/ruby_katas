class Tribonacci
    def sequence(signature, n)
        return signature.first(n) if n <= 3
        n.times do 
            break if signature.length == n
            signature << signature.last(3).sum
        end
        signature
    end
end