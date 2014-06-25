require_relative "./encryptor"
require 'optparse'

options = {}

OptionParser.new do |opts|
  opts.on('-r', '--rotation NUM', Integer) do |num|
    options[:rotation] = num
  end

  opts.on('-f', '--file NAME') do |name|
    options[:file] = name
  end

  opts.on('-d', '--decrypt') do |d|
    options[:decrypt] = d
  end
end.parse!

encrypt = Encryptor.new(options[:rotation] || 13)

if options[:file]
  lines_to_encrypt = File.readlines(options[:file])
else
  lines_to_encrypt = ARGV.dup
end

if options[:decrypt]
  puts lines_to_encrypt.map { |line| encrypt.decrypt(line) }
else
  puts lines_to_encrypt.map { |line| encrypt.encrypt(line) }
end
