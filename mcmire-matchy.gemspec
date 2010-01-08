# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mcmire-matchy}
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy McAnally"]
  s.date = %q{2010-01-08}
  s.description = %q{RSpec-esque matchers for use in Test::Unit}
  s.email = ["jeremy@entp.com"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "License.txt",
     "Manifest.txt",
     "PostInstall.txt",
     "README.rdoc",
     "Rakefile",
     "config/hoe.rb",
     "config/requirements.rb",
     "countloc.rb",
     "lib/matchy.rb",
     "lib/matchy/built_in/change_expectations.rb",
     "lib/matchy/built_in/enumerable_expectations.rb",
     "lib/matchy/built_in/error_expectations.rb",
     "lib/matchy/built_in/operator_expectations.rb",
     "lib/matchy/built_in/truth_expectations.rb",
     "lib/matchy/custom_matcher.rb",
     "lib/matchy/expectation_builder.rb",
     "lib/matchy/matcher_builder.rb",
     "lib/matchy/modals.rb",
     "lib/matchy/version.rb",
     "mcmire-matchy.gemspec",
     "setup.rb",
     "tasks/deployment.rake",
     "tasks/environment.rake",
     "test/all.rb",
     "test/ruby1.9.compatibility_tests.rb",
     "test/test_change_expectation.rb",
     "test/test_custom_matcher.rb",
     "test/test_enumerable_expectations.rb",
     "test/test_error_expectations.rb",
     "test/test_expectation_builder.rb",
     "test/test_helper.rb",
     "test/test_matcher_builder.rb",
     "test/test_modals.rb",
     "test/test_operator_expectations.rb",
     "test/test_truth_expectations.rb"
  ]
  s.homepage = %q{http://github.com/mcmire/matchy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{RSpec-esque matchers for use in Test::Unit}
  s.test_files = [
    "test/all.rb",
     "test/ruby1.9.compatibility_tests.rb",
     "test/test_change_expectation.rb",
     "test/test_custom_matcher.rb",
     "test/test_enumerable_expectations.rb",
     "test/test_error_expectations.rb",
     "test/test_expectation_builder.rb",
     "test/test_helper.rb",
     "test/test_matcher_builder.rb",
     "test/test_modals.rb",
     "test/test_operator_expectations.rb",
     "test/test_truth_expectations.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
