require_relative "./encryptor"

print 'How many spaces to rotate? '
count = gets.chomp
rot_13 = Encryptor.new(count.to_i)

print 'What text do you want to encrypt? '
text = gets.chomp

encrypted = rot_13.encrypt(text)
puts encrypted
decrypted = rot_13.decrypt(encrypted)
puts decrypted
