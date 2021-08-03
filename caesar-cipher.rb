legend = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split('')

def encrypt(string, shift, legend)
  puts("Encrypting string: #{string}")

  string_array = string.split('')

  string_array.each_with_index do |string_char, i|
    if legend.include?(string_char)
      legend.each_with_index do |legend_char, k|
        if string_char == legend_char
          puts("#{k}: #{legend_char}")
        end
      end
    else
      puts("nil: #{string_char}")
    end
  end
end

encrypt("Hello world!", 5, legend)