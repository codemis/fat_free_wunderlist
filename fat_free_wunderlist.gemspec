# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fat_free_wunderlist/version"

Gem::Specification.new do |s|
  s.name        = "fat_free_wunderlist"
  s.version     = FatFreeWunderlist::VERSION
  s.authors     = ["Codemis"]
  s.email       = ["johnathan@still-water.com"]
  s.homepage    = ""
  s.summary     = %q{Sends Fat Free CRM tasks to Wunderlist To Do Manager}
  s.description = %q{Using Action Mailer,  gem sends all tasks from Fat Free CRM to your Wunderlist account.}

  s.rubyforge_project = "fat_free_wunderlist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "mail"
	s.add_development_dependency "rails"
	s.add_development_dependency "actionmailer"
	s.add_development_dependency "rspec"
	s.add_development_dependency "rspec-rails"
	s.add_development_dependency 'combustion', '~> 0.3.1'
	s.add_development_dependency 'sqlite3'
end
