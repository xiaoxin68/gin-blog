module gin-blog

go 1.14

replace (
	gin-blog/middleware/jwt => ./middleware/jwt
	gin-blog/models => ./models
	gin-blog/pkg/app => ./pkg/app
	gin-blog/pkg/e => ./pkg/e
	gin-blog/pkg/file => ./pkg/file
	gin-blog/pkg/gredis => ./pkg/gredis
	gin-blog/pkg/logging => ./pkg/logging
	gin-blog/pkg/setting => ./pkg/setting
	gin-blog/pkg/upload => ./pkg/upload
	gin-blog/pkg/util => ./pkg/util
	gin-blog/routers => ./routers
	gin-blog/routers/api => ./routers/api
	gin-blog/routers/uploadapi => ./routers/uploadapi
	gin-blog/service/article_service => ./service/article_service
	gin-blog/service/cache_service => ./service/cache_service
	gin-blog/service/tag_service => ./service/tag_service
	gin-blog/service/auth_service => ./service/auth_service
	gin-blog/pkg/export => ./pkg/export
	gin-blog/pkg/qrcode => ./pkg/qrcode
)

require (
	gin-blog/middleware/jwt v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/models v0.0.0-00010101000000-000000000000
	gin-blog/pkg/gredis v0.0.0-00010101000000-000000000000
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000
	gin-blog/routers v0.0.0-00010101000000-000000000000
	github.com/gin-gonic/gin v1.6.3
	github.com/robfig/cron/v3 v3.0.1
)
