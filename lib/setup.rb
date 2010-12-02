require 'optiflag'

module PC extend OptiFlagSet
  optional_flag 'keyfile' do
    description 'Key file in yaml format'
    alternate_forms 'key', 'k'
  end
  optional_flag 'lookup' do 
    description 'Lookup a character or series of characteracters in the key'
    alternate_forms 'l'
  end
  optional_switch_flag 'case_sensitive' do 
    description 'Is input case sensitive?'
    alternate_forms 'c', 'case'
  end
  usage_flag 'h', 'help', '?'

  and_process!
end 
