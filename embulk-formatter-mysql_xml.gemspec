
Gem::Specification.new do |spec|
  spec.name          = "embulk-formatter-mysql_xml"
  spec.version       = "0.1.0"
  spec.authors       = ["Takehiro Shiozaki"]
  spec.summary       = "MySQL XML formatter plugin for Embulk"
  spec.description   = "Embulk formatter plugin to output value for MySQL's `LOAD XML` statement."
  spec.email         = ["shio.phys@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/shio.phys/embulk-formatter-mysql_xml"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
