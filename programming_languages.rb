def reformat_languages(languages)
  new_hash = {}
   languages.each do |style, list_of_languages|
    list_of_languages.each do |language, type_hash|
      type_hash.each do |header, type_data|
        if new_hash.include?(language)
           new_hash[language][:style] << style
        else
          new_hash[language] = { style: [style], type: type_data}
        end
      end
    end
  end
  new_hash
end
