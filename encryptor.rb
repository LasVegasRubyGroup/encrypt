class Encryptor
  attr_reader :cipher
  
  def initialize(rotate_by)
    @cipher = build_rotation_cipher(rotate_by)
  end

  def decrypt(string)
    transpose(string) { |l| decrypt_letter(l) }
  end

  def encrypt(string)
    transpose(string) { |l| encrypt_letter(l) }
  end

  private

  def build_rotation_cipher(rotate_by)
    rotated = normal_letters.rotate(rotate_by)
    Hash[normal_letters.zip(rotated)]
  end

  def normal_letters
    @normal_letters ||= (' '..'z').to_a
  end

  def encrypt_letter(letter)
    cipher[letter]
  end

  def decrypt_letter(letter)
    cipher.key(letter)
  end

  def transpose(string, &block)
    letters = string.split("")
    letters.map!(&block)
    letters.join("")
  end
end
