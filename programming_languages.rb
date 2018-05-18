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
    languages[:oo].each do |language, attribute|
      if new_hash[language][attribute] == :javascript
          new_hash[language][attribute] = {style: [:oo, :functional]}
      else    
        new_hash[language][attribute] = {style: []} 
        new_hash[language][attribute][:style] << :oo
      end 
    end
    languages[:functional].each do |language, attribute|
      unless new_hash[language][attribute] == :javascript
        new_hash[language][attribute] = {style: [:functional]} 
      end 
    end  
  new_hash   
end
