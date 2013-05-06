# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name          = "safe-erb"
  gem.version       = SafeERB::VERSION
  gem.authors       = ["Aaron Bedra", "Shinya Kasatani"]
  gem.email         = ["kasatani@gmail.com"]
  gem.description   = %q{Safe ERB lets you make sure that the string written by `<%= %>` in
your erb template is escaped correctly. If you try to show the
attributes in the ActiveRecord instance read from the database or the
parameters received from the request without escaping them using `h`
method, an exception will be raised. This will significantly reduce
the possibility of putting cross-site scripting vulnerability into
your web application.}
  gem.summary       = %q{Safe ERB lets you make sure that the string written by `<%= %>` in
your erb template is escaped correctly.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
