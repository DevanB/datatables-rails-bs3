# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery/datatables/rails/version"

Gem::Specification.new do |s|
  s.name = "datatables-rails-bs3"
  s.version = Jquery::Datatables::Rails::VERSION
  s.authors = ["Devan Beitel"]
  s.email = ["devan@bham.al"]
  s.homepage = "https://github.com/DevanB/jquery-datatables-rails"
  s.summary = %q{datatables bootstrap 3 for rails}
  s.description = %q{}

  s.files = `git ls-files`.split("\n")
  s.files = Dir["{lib,vendor}/**/*"]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "jquery-rails"
end


