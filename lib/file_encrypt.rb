require_relative "./encryptor"

print 'How many spaces to rotate? '
count = gets.chomp
rot_13 = Encryptor.new(count.to_i)

print 'What file do you want to encrypt? '
file_name = gets.chomp

lines_to_encrypt = File.readlines(file_name)

lines_to_encrypt.map! { |line| rot_13.encrypt(line) }

output_name = file_name << "_encrypted"

File.open(output_name, 'w') do |file|
  file.print(lines_to_encrypt.join("\n"))
end
