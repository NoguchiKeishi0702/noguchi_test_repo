n = gets.to_i
s = Math.sqrt(n).floor

res = []
i = 2

while i * i <= n
    ex = 0
    if n.modulo(i).zero?
        loop do
            q, r = n.divmod(i)
            break if r.nonzero?
            n = q
            ex += 1
        end
        res << [i, ex]
    end
    i += 1
end

res << [n, 1] unless n == 1

puts res.flat_map{|v, count| [v] * count}.join(' ')
