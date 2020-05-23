module gin-blog/routers/api

go 1.14

require (
	gin-blog/models v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/util v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/app v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/qrcode v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/service/article_service v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/service/tag_service v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/service/auth_service v0.0.0-00010101000000-000000000000 // indirect
	github.com/astaxie/beego v1.12.1 // indirect
	github.com/gin-gonic/gin v1.6.3 // indirect
)

replace (
	gin-blog/models => ../../models
	gin-blog/pkg/e => ../../pkg/e
	gin-blog/pkg/setting => ../../pkg/setting
	gin-blog/pkg/util => ../../pkg/util
	gin-blog/pkg/logging => ../../pkg/logging
    gin-blog/pkg/file => ../../pkg/file
    gin-blog/pkg/app => ../../pkg/app
    gin-blog/service/article_service => ../../service/article_service
    gin-blog/service/tag_service => ../../service/tag_service
    gin-blog/service/cache_service => ../../service/cache_service
    gin-blog/service/auth_service => ../../service/auth_service
    gin-blog/pkg/gredis => ../../pkg/gredis
    gin-blog/pkg/export => ../../pkg/export
    gin-blog/pkg/qrcode => ../../pkg/qrcode
)
