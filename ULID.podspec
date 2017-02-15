Pod::Spec.new do |s|
  s.name              = 'ULID'
  s.version           = '0.1.0'
  s.summary           = 'Universally Unique Lexicographically Sortable Identifier'
  s.homepage          = 'https://github.com/whitesmith/WSTagsField'
  s.author            = { "Ricardo Pereira" => "m@ricardopereira.eu" }
  s.license           = 'MIT'
  s.social_media_url  = 'https://twitter.com/whitesmithco'
  s.description       = <<-DESC
                        Universally Unique Lexicographically Sortable Identifier (Objective-C wrapper of the C++ lib).
                        DESC
  s.source            = { :git => "https://github.com/whitesmith/ulid.git", :tag => s.version.to_s }
  s.platform          = :ios, '8.0'
  s.requires_arc      = true
  s.source_files      = 'ULID/*.{h}', 'Source/*.{h,hh,hpp,cpp,m,mm}'
  s.public_header_files = 'ULID/*.{h}'
end
