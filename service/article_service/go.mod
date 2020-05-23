module gin-blog/service/article_service

go 1.14

require (
	gin-blog/models v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/file v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/gredis v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/qrcode v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/service/cache_service v0.0.0-00010101000000-000000000000 // indirect
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0 // indirect
	golang.org/x/image v0.0.0-20200430140353-33d19683fad8 // indirect
)

replace (
	gin-blog/models => ../../models
	gin-blog/pkg/e => ../../pkg/e
	gin-blog/pkg/file => ../../pkg/file
	gin-blog/pkg/gredis => ../../pkg/gredis
	gin-blog/pkg/logging => ../../pkg/logging
	gin-blog/pkg/qrcode => ../../pkg/qrcode
	gin-blog/pkg/setting => ../../pkg/setting
	gin-blog/pkg/util => ../../pkg/util
	gin-blog/service/cache_service => ../cache_service
)
