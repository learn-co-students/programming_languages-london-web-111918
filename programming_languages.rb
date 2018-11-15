require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, name|
    name.each do |lang, value|
      value.each do |k, v|
        if new_hash.include?(lang)
          new_hash[lang][:style] << style
          #binding.pry
        else
          new_hash[lang] = {k => v, :style => [style]}
        #binding.pry
      end
    end
  end

end
new_hash
end
