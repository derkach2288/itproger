current_path = File.dirname(__FILE__)

text = File.read(current_path + "/text.txt")


puts text.downcase.scan(/\b\S{3}\b/).uniq.length  # \b означает начало и конец слова