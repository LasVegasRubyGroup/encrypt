class Encryptor
  attr_reader :cipher
  
  def initialize(rotate_by)
    @rotate_by = rotate_by
    @cipher = build_cipher
  end

  def build_cipher
    normal = ('a'..'z').to_a
    rotated = normal.rotate(@rotate_by)
    Hash[normal.zip(rotated)].merge(" " => " ")
  end

  def encrypt_letter(letter)
    cipher[letter.downcase]
  end

  def decrypt_letter(letter)
    cipher.key(letter.downcase)
  end

  def decrypt(string)
    transpose(string) { |l| decrypt_letter(l) }
  end

  def encrypt(string)
    transpose(string) { |l| encrypt_letter(l) }
  end

  def transpose(string, &block)
    letters = string.split("")
    letters.map!(&block)
    letters.join("")
  end
end
