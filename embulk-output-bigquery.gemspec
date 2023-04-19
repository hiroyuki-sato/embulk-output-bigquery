Gem::Specification.new do |spec|
  spec.name          = "embulk-output-bigquery"
  spec.version       = "0.6.9"
  spec.authors       = ["Satoshi Akama", "Naotoshi Seo"]
  spec.summary       = "Google BigQuery output plugin for Embulk"
  spec.description   = "Embulk plugin that insert records to Google BigQuery."
  spec.email         = ["satoshiakama@gmail.com", "sonots@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/embulk/embulk-output-bigquery"

  # Exclude example directory which uses symlinks from generating gem.
  # Symlinks do not work properly on the Windows platform without administrator privilege.
  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"] - Dir["example/*" ]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'google-api-client','~> 0.53.0'
  spec.add_dependency 'thwait', '~> 0.2.0'
  spec.add_dependency 'time_with_zone'
  spec.add_dependency "representable", ['~> 3.0.0', '< 3.1']

  spec.add_development_dependency 'embulk', '> 0.10.0'
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
