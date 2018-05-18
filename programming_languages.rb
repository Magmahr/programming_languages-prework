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
    languages[:oo].each do |language|
      new_hash[language] = {style: []} 
      new_hash[language][:style] << :oo
    end
    languages[:functional].each do |language|
      new_hash[language] = {style: []} 
        if new_hash[language] == :javascript
          new_hash[language][:style] << :functional
        else  
        new_hash[language] = {style: [:functional]} 
        end 
    end  
  new_hash   
end
