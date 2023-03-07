require 'digest'

puts "Введите слово или фразу для шифрования:"
word = gets.chomp

puts "Каким способом зашифровать (введите 1 или 2):"
puts "1. MD5"
puts "2. SHA1"
encryption_method = gets.chomp.to_i

if encryption_method == 1
  encryption_result = Digest::MD5.hexdigest "#{word }"
elsif encryption_method == 2
  encryption_result = Digest::SHA1.hexdigest "#{word }"
end

puts "Вот что получилось:"
puts "#{encryption_result}"
