puts "What is the name of the file?"
puts "What is the keyword"
key_word = "abc"

file = File.open("nice.txt", "r")
file_content = file.read().split('')
file.close

tmp = []
count = 0

file_content.each { |i|
    if  i != key_word[count]
        count = 0
        tmp.clear
    else
        count += 1
        tmp.push(1)
        if tmp.length == key_word.length
            #highlighht logic
            count = 0
            tmp.clear
        end
    end
}