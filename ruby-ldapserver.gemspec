# -*- encoding: utf-8 -*-
lib = File.join File.dirname(__FILE__), 'lib/'
$:.unshift lib unless $:.include?(lib)

require 'ldap/server/version'

Gem::Specification.new do |s|
  s.name        = "ruby-ldapserver"
  s.version     = LDAP::Server::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Intersect"]
  s.email       = ["support@intersect.org.au"]
  s.summary     = "A Ruby LDAP server for use in testing"
  s.homepage    = 'https://github.com/IntersectAustralia/ruby-ldapserver'
  s.description = <<-EOF
    This is a LDAP server aimed mainly for use in testing (unit, rspec and cucumber).
    The core is based on the project ruby-ldapserver, which we forked, gem-ify and
    tailored specialy for testing with different settings.
  EOF

  s.add_development_dependency "rspec"
  s.add_development_dependency "net-ldap"

  s.files        = Dir.glob("{lib,examples}/**/*") + %w(LICENSE README)
  s.require_path = 'lib'
end

