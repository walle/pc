require './src/password_crypt.rb'

describe PasswordCrypt do 
  before(:each) do 
    @pc = PasswordCrypt.new 
  end

  it 'should use default key file if none given' do 
    @pc.keyfile.should == PasswordCrypt::DEFAULT_KEY_FILE 
  end
  
  it 'should not be case sensitive unless said so' do 
    @pc.case_sensitive.should be_false
  end

  it 'should be case sensitive when told' do 
    @pc = PasswordCrypt.new({:case_sensitive => true}) 
    @pc.case_sensitive.should be_true
  end

  it 'should respond to lookup' do 
    @pc.should respond_to :lookup
  end

  it 'should not respond to key' do 
    @pc.should_not respond_to :key  
  end

  describe 'lookup' do 

    it 'should give the correct output in case insensitive mode'
    
    it 'should give the correct output in case sensitive mode'
    
  end
end
