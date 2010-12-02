module PC  
  class PasswordCrypt
    attr_reader :keyfile, :case_sensitive 
    DEFAULT_KEY_FILE = '.key'

    def initialize(hash = {})
      @keyfile = DEFAULT_KEY_FILE if hash[:filename].nil? || hash[:filename].empty?
      @key = YAML::load(File.open(@keyfile))
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
end
