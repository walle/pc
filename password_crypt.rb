class PasswordCrypt
  
  def initialize(filename, case_sensitive)
    @key = YAML::load(File.open(filename))
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
