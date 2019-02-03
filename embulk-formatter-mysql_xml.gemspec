
Gem::Specification.new do |spec|
  spec.name          = "embulk-formatter-mysql_xml"
  spec.version       = "0.1.0"
  spec.authors       = ["shiozaki"]
  spec.summary       = "Mysql Xml formatter plugin for Embulk"
  spec.description   = "Formats Mysql Xml files for other file output plugins."
  spec.email         = ["shio.phys@gmail.com"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/shio.phys/embulk-formatter-mysql_xml"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'embulk', ['>= 0.9.14']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
