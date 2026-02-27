Pod::Spec.new do |s|
  s.name             = 'NewPapayaSDK'
  s.version          = '0.1.0'
  s.summary          = 'Internal SDK for NewPapayaGetServers.'
  s.description      = 'Private SDK that provides NewPapayaGetServers for internal use.'
  s.homepage         = 'https://gitlab.athenase.vip/jinpeng2/selfpods'
  s.license          = { :type => 'Proprietary' }
  s.author           = { 'Papaya' => 'papaya@example.local' }
  s.source           = { :git => 'https://gitlab.athenase.vip/jinpeng2/selfpods.git', :tag => s.version }
  s.ios.deployment_target = '9.0'
  s.swift_version    = '5.0'
  s.source_files     = 'Classes/**/*.{swift}'
  s.requires_arc     = true
end
