from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
input = File.open(from_file)
indata = input.read()

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exists? to_file}"
puts "Read, hit RETURN to continue, CTRL-C to quit."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Aright, all done"

output.close()
input.close()
