module gin-blog/routers

go 1.14

replace (
	gin-blog/middleware/jwt => ../middleware/jwt
	gin-blog/models => ../models
	gin-blog/pkg/app => ../pkg/app
	gin-blog/pkg/e => ../pkg/e
	gin-blog/pkg/export => ../pkg/export
	gin-blog/pkg/file => ../pkg/file
	gin-blog/pkg/gredis => ../pkg/gredis
	gin-blog/pkg/logging => ../pkg/logging
	gin-blog/pkg/qrcode => ../pkg/qrcode
	gin-blog/pkg/setting => ../pkg/setting
	gin-blog/pkg/upload => ../pkg/upload
	gin-blog/pkg/util => ../pkg/util
	gin-blog/routers/api => ./api
	gin-blog/routers/uploadapi => ./uploadapi
	gin-blog/service/article_service => ../service/article_service
	gin-blog/service/auth_service => ../service/auth_service
	gin-blog/service/cache_service => ../service/cache_service
	gin-blog/service/tag_service => ../service/tag_service
)

require (
	gin-blog/pkg/export v0.0.0-00010101000000-000000000000
	gin-blog/pkg/upload v0.0.0-00010101000000-000000000000
	gin-blog/routers/api v0.0.0-00010101000000-000000000000
	gin-blog/routers/uploadapi v0.0.0-00010101000000-000000000000
	gin-blog/middleware/jwt v0.0.0-00010101000000-000000000000
	github.com/gin-gonic/gin v1.6.3
	gopkg.in/ini.v1 v1.56.0 // indirect
)
