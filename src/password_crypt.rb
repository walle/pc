require 'yaml'

class PasswordCrypt
  attr_reader :keyfile, :case_sensitive 
  DEFAULT_KEY_FILE = File.expand_path(File.dirname(__FILE__) + '/../config') + '/.key'

  def initialize(hash = {})
    @keyfile = (hash[:filename].nil? || hash[:filename].empty? ? DEFAULT_KEY_FILE : hash[:filename] )
    @key = (File.exist?(@keyfile) ? YAML::load(File.open(@keyfile)) : {})
    case_sensitive = ( hash[:case_sensitive].nil? ? false : hash[:case_sensitive] )
    @case_sensitive = case_sensitive
  end

  def lookup(input)
    input.split('').map do |char|
      char = char.downcase unless @case_sensitive
      if @key.has_key? char
        @key[char]
      else
        char
      end
    end.join
  end

end
