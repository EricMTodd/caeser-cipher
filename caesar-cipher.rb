legend = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split('')

def encrypt(string, shift, legend)
  puts("Encrypting string: #{string}")
  encryption = []

  string_array = string.split('')

  string_array.each_with_index do |string_char, i|
    if legend.include?(string_char)
      legend.each_with_index do |legend_char, k|
        if string_char == legend_char
          if k + shift > legend.length
            encryption.push(legend[legend.length - k])
          else
            encryption.push(legend[k + shift])
          end
        end
      end
    else
      encryption.push(string_char)
    end
  end
  puts("encryption: #{encryption.join("")}")
  return encryption.join("")
end

encrypt("Hello world!", 5, legend)