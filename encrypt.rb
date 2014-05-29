require_relative "./encryptor"

rot_13 = Encryptor.new(13)
encrypted = rot_13.encrypt("Hello World!")
puts encrypted
decrypted = rot_13.decrypt(encrypted)
puts decrypted
