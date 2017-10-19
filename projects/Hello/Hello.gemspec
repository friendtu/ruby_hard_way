#coding:utf-8

lib=File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name="Hello"
    spec.version="1.0"
    spec.authors==["Your Name Here"]
    spec.email==["Youremail@yourdomain.com"]
    spec.summary=%q{Short summary of your project}
    spec.description=%q{Longer description of your project}
    spec.homepage="http://domainforproject.com/"
    spec.files=['lib/Hello.rb']
    spec.executables=['bin/Hello']
    spec.test_files=['tests/test_Hello.rb']
    spec.require_paths=["lib"]
end