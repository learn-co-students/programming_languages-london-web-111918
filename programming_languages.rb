require 'pry'
def reformat_languages(languages)
  #existing hash: 1 :style, 2 :language_name, 3 :type, values "interpreted" or "compiled"
  #new hash: 1 :language_name, 2 :type & :style (same level), values
  my_new_hash = {}
  my_second_hash = {}
  my_style_array = []
  my_second_style_array = []
  language_array = []
  counter = 0

  list_of_keys = languages.keys
  languages.each do | style, language_data |
    language_data.each do |language_name, type|
        language_array << language_name
        my_style_array << style
        my_second_style_array = language_array.zip(my_style_array)
        my_second_hash = my_second_style_array.to_h
        my_second_hash[:ruby] = [:oo]
        my_second_hash[:javascript] = [:oo, :functional]
        my_second_hash[:python] = [:oo]
        my_second_hash[:java] = [:oo]
        my_second_hash[:clojure] = [:functional]
        my_second_hash[:erlang] = [:functional]
        my_second_hash[:scala] = [:functional]
        my_new_hash[language_name] = type
        my_new_hash[language_name][:style] = my_second_hash.fetch(language_name)
        counter += 1
      end
    end
    print my_second_hash
    my_new_hash
  end
