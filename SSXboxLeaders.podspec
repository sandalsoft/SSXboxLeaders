Pod::Spec.new do |s|
  s.name         = 'SSXboxLeaders'
  s.version      = '0.0.1'
  s.homepage     = 'https://github.com/sandalsoft/SSXboxLeaders'
  s.authors      = { 'Eric Nelson' => '@sandalsoft' }
  s.summary      = 'Objective-C Wrapper for XboxLeaders API'
  s.source       =  {
                      :git => 'https://github.com/sandalsoft/SSXboxLeaders.git', 
                      :tag => 'v1.0' 
                    }  
  s.source_files = 'SSXboxLeaders/*.{h,m}'
  s.framework    = 'SystemConfiguration'
  s.requires_arc = true
  s.dependency 'AFNetworking', '~> 1.2.1'
end
