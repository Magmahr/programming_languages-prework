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
  new_hash = {}
    languages.each do |language_type, attribute|
      attribute.each do |name, type|
        if new_hash[name] == nil
          new_hash[name] = type
          new_hash[name].merge!({style: [language_type]})
        else 
          new_hash[name][:style] << language_type
        end  
       end 
      end 
  new_hash   
end
