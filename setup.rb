require 'optiflag'

DEFAULT_KEY_FILE = '.key'

module PC extend OptiFlagSet
  optional_flag 'keyfile' do
    description 'Key file in yaml format'
    alternate_forms 'key', 'k'
    validates_against do |flag,errors|
      unless File.exists? flag.value.to_s
        flag.value = DEFAULT_KEY_FILE
      end
    end   
  end
  optional_flag 'lookup' do 
    description 'Lookup a character or series of characteracters in the key'
    alternate_forms 'l'
  end
  usage_flag 'h', 'help', '?'

  and_process!
end 
