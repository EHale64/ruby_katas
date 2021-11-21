class StringIncrementer
    def increment_string(input)
        i = -1
        nums = []
        if ('a'...'z').include?(input[0])
            until ('a'...'z').include?(input[i].downcase)
                nums.unshift(input[i])
                i -= 1
            end
            total_nums = nums.join
            input.delete_suffix(total_nums) + "%0#{total_nums.length}d" % total_nums.to_i.next
        elsif ('0'...'9').include?(input)
            input
        else
            "%0#{input.length}d" % input.to_i.next
        end
    end
end