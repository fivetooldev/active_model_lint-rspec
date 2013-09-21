Gem::Specification.new do |s|
  s.name        = 'active_model_lint-rspec'
  s.version     = '0.0.1'
  s.date        = '2013-09-21'
  s.summary     = "Implements ActiveModel::Lint::Tests in RSpec."
  s.description = "Provides the ActiveModel::Lint::Tests for test-unit or minitest an RSpec shared example."
  s.authors     = ["Geoff Harcourt"]
  s.email       = 'geoff@fivetool.io'
  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]
  s.homepage    =
    'http://github.com/geoffharcourt/active_model_lint-rspec'
  s.license       = 'MIT'

  s.add_dependency("activemodel", ">= 3.0")
  s.add_dependency("rspec-core")
end

