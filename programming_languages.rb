require 'pry'

def reformat_languages(languages)
new_hash = {}
  languages.each do |style, list|
    list.each do |lang, hash|
      hash.each do |attribute, string|
        if !new_hash.has_key?(lang)
          new_hash[lang] = {}
        end
        if !new_hash[lang].has_key?(attribute)
          new_hash[lang][attribute] = string
        end
          new_hash[lang][:style] ||= []
          new_hash[lang][:style] << style
     
      end
    end
  end  
  return new_hash
end