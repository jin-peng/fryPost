Pod::Spec.new do |s|
  s.name             = 'NewPapayaSDK'
  s.version          = '0.1.2'
  s.summary          = 'Internal SDK for NewPapayaGetServers.'
  s.description      = 'Private SDK that provides NewPapayaGetServers for internal use.'
  s.homepage         = 'https://github.com/jin-peng'
  s.license          = { :type => 'Proprietary' }
  s.author           = { 'Papaya' => 'ger0ger@aliyun.com' }
  s.source           = { :git => 'https://github.com/jin-peng/fryPost.git', :tag => s.version }
  s.ios.deployment_target = '15.0'
  s.swift_version    = '5.0'
  s.source_files     = 'Classes/**/*.{swift}'
  s.requires_arc     = true
end
