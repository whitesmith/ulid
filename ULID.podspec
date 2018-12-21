Pod::Spec.new do |s|
  s.name              = 'ULID'
  s.version           = '1.0.4'
  s.summary           = 'Universally Unique Lexicographically Sortable Identifier'
  s.homepage          = 'https://github.com/whitesmith/ulid'
  s.author            = { "Ricardo Pereira" => "m@ricardopereira.eu" }
  s.license           = 'MIT'
  s.social_media_url  = 'https://twitter.com/whitesmithco'
  s.description       = <<-DESC
                        Universally Unique Lexicographically Sortable Identifier (Objective-C wrapper of the C++ lib).
                        DESC
  s.source            = { :git => "https://github.com/whitesmith/ulid.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc      = true
  s.source_files      = 'ULID/*.{h}', 'Source/*.{h,hh,hpp,cpp,m,mm}'
  s.public_header_files = 'ULID/*.{h}', 'Source/*.{h}'
  s.private_header_files = 'Source/*.{hh,hpp}'
end
