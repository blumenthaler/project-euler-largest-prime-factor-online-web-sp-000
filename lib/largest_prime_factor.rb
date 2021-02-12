# Enter your procedural solution here!
def largest_prime_factor(limit)
    array = []
    i = 2
    while i < limit
        if limit % i === 0
            array << i
        end
        break if i > limit
        i += 1
    end
    largest_prime = 0
    array.each do |int|
        is_prime = true
        j = 2
        while j < int 
            if int % j == 0
                is_prime = false
            end
            break if j > int
            j += 1
        end
        largest_prime = int if is_prime and int > largest_prime
    end
    return largest_prime
end