max = 0
longest = []
while line = gets do
    line.chomp!
    if line.length > max
        max = line.length
        longest = [line]
    elsif line.length == max
        longest << line
    end
end

if longest.length 
    puts longest.join("\n")
end
