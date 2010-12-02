require './src/password_crypt.rb'

describe PasswordCrypt, '#initialize' do 
  it 'should use default key file if none given' do 
    pc = PasswordCrypt.new
    pc.keyfile.should == PasswordCrypt::DEFAULT_KEY_FILE 
  end
end
