legend = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split('')

def encrypt(string, shift, legend)
  puts("Encrypting string: #{string}")
  encryption = []

  string_array = string.split('')

  string_array.each_with_index do |string_char, i|
    if legend.include?(string_char)
      legend.each_with_index do |legend_char, k|
        if string_char == legend_char
          # puts("#{k}: #{legend_char}")
          if k + shift > legend.length
            # puts("#{legend.length - k}: #{legend[legend.length - k]}")
            encryption.push(legend[legend.length - k])
          else
            # puts("#{k + shift}: #{legend[k + shift]}")
            encryption.push(legend[k + shift])
          end
        end
      end
    else
      # puts("nil: #{string_char}")
      encryption.push(string_char)
    end
  end
  puts("encryption: #{encryption.join("")}")
  return encryption.join("")
end

encrypt("Hello world!", 5, legend)