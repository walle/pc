require './src/password_crypt.rb'

describe PasswordCrypt do 
  it 'should use default key file if none given' do 
    pc = PasswordCrypt.new
    pc.keyfile.should == PasswordCrypt::DEFAULT_KEY_FILE 
  end
  
  it 'should not be case sensitive unless said so' do 
    pc = PasswordCrypt.new
    pc.case_sensitive.should be_false
  end

  it 'should be case sensitive when told' do 
    pc = PasswordCrypt.new({:case_sensitive => true}) 
    pc.case_sensitive.should be_true
  end
end
