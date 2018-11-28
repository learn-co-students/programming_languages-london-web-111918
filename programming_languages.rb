require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
x = {}
z = []
  languages.each do |style, language|
    language.each do |lang, data|
      data.each do |type, value|
        x[lang] = {type => value}
        if lang == :javascript
         z << style
         x[:javascript][:style] = z
       else
         x[lang][:style] = [] << style
       end
      end
    end
  end
  return x
end
