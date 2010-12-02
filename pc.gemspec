# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'pc/version'

Gem::Specification.new do |s|
  s.name          = "pc"
  s.version       = PC::VERSION
  s.platform      = Gem::Platform::RUBY
  s.summary       = "A ruby password generator"
  s.homepage      = "http://github.com/walle/pc"
  s.authors       = [ 'Fredrik Wallgren' ]
  s.email         = 'fredrik.wallgren@gmail.com'

  s.files         = %w( README LICENSE )
  s.files        += Dir.glob("lib/**/*")
  s.files        += Dir.glob("spec/**/*")
  s.files        += Dir.glob("examples/**/*")

  s.require_path  = 'lib'

  s.extra_rdoc_files  = [ "README", "LICENSE" ]
  s.rdoc_options      = [ "--charset=UTF-8" ]

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "highline"
  s.add_dependency "optiflag"

  s.add_development_dependency "rspec"

  s.description = <<-DESC
    PC provides a terminal interface for generating passwords based on a 
    selected key.
  DESC
end
