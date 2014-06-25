require 'thor'
require_relative './encryptor'

class CLI < Thor
  class_option :rotation, type: :numeric, aliases: '-r'
  class_option :decrypt, type: :boolean, aliases: '-d'

  desc 'text', 'Encrypt/decrypt supplied text'
  def text(supplied_text)
    puts convert(Array(supplied_text))
  end

  desc 'file', 'Encrypt/decrypt the named file'
  def file(name)
    puts convert(File.readlines(name))
  end

  private

  def encryptor
    @encryptor ||= Encryptor.new(options[:rotation] || 13)
  end

  def convert(lines)
    if options[:decrypt]
      lines.map { |line| encryptor.decrypt(line) }
    else
      lines.map { |line| encryptor.encrypt(line) }
    end
  end
end

CLI.start(ARGV)
