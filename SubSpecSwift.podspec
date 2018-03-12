Pod::Spec.new do |s|
  s.name             = 'SubSpecSwift'
  s.version          = '0.1.0'
  s.summary          = 'A meaningful summary'
  s.description      = <<-DESC
Also meaningful. And longer than the summary.
                       DESC

  s.homepage         = 'https://example.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paxswill' => 'paxswill@paxswill.com' }
  s.source           = { :git => 'https://github.com/paxswill/SubSpecSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.swift_version = '4.1'

  s.source_files = 'SubSpecSwift/Classes/**/*'
  s.dependency 'Threadly'

  # Uncomment the lines below to work around test spec dependencies not being
  # built.
  #s.dependency 'Nimble'
  #s.dependency 'Quick'

  s.test_spec 'Tests' do |t|
    t.dependency 'Nimble'
    t.dependency 'Quick'
    t.source_files = 'Example/Tests/*.swift'
  end
end
