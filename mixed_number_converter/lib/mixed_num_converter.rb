class MixedNumberConverter
    def mixed_fraction(s)
        nums = s.split('/')
        decimal = nums[0].to_i / nums[1].to_f
        return 'Must raise ZeroDivisionError' if decimal.nan? || decimal.infinite? == 1
        whole = decimal.rationalize.to_i
        rational = decimal.rationalize - whole
        return "#{whole} #{rational.abs}" if rational < 0 && whole < 0
        return "#{whole} #{rational}" if whole != 0 && rational != 0
        return "#{rational}" if whole < 1 && rational != 0
        return "#{whole}" if rational == 0
    end
end