# def highlight_red(text)
#   "\e[31m#{text}\e[0m"
# end

filename = ARGV[0]
# pattern = ARGV[1]

file_exists = File.exist?(filename)

unless file_exists
  raise "Err: File does not exist."
end

# if pattern.nil?
#   raise "Err: Second argument, pattern, is required."
# end

File.open(filename, "r") do |file|
  text = file.read.gsub("\n", "")
  while text.length > 0
    if text.length > 5
      puts text.slice(0, 5)
      text = text.slice(5, text.length)
    else
      puts text.slice(0, text.length)
      text.clear
    end
  end
end

