# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{data_bank}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Amos King"]
  s.date = %q{2008-11-25}
  s.description = %q{Marshal data to be loaded on sequential runs of your script.}
  s.email = %q{amos.l.king@gmail.com}
  s.extra_rdoc_files = ["lib/data_bank.rb", "README.rdoc"]
  s.files = ["lib/data_bank.rb", "MIT-LICENSE", "Rakefile", "README.rdoc", "Manifest", "data_bank.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/Adkron/databank}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Data_bank", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{data_bank}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Marshal data to be loaded on sequential runs of your script.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
