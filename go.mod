module gin-blog

go 1.14

replace (
	gin-blog/middleware/jwt => ./middleware/jwt
	gin-blog/models => ./models
	gin-blog/pkg/app => ./pkg/app
	gin-blog/pkg/e => ./pkg/e
	gin-blog/pkg/export => ./pkg/export
	gin-blog/pkg/file => ./pkg/file
	gin-blog/pkg/gredis => ./pkg/gredis
	gin-blog/pkg/logging => ./pkg/logging
	gin-blog/pkg/qrcode => ./pkg/qrcode
	gin-blog/pkg/setting => ./pkg/setting
	gin-blog/pkg/upload => ./pkg/upload
	gin-blog/pkg/util => ./pkg/util
	gin-blog/routers => ./routers
	gin-blog/routers/api => ./routers/api
	gin-blog/routers/uploadapi => ./routers/uploadapi
	gin-blog/service/article_service => ./service/article_service
	gin-blog/service/auth_service => ./service/auth_service
	gin-blog/service/cache_service => ./service/cache_service
	gin-blog/service/tag_service => ./service/tag_service
)

require (
	github.com/360EntSecGroup-Skylar/excelize/v2 v2.2.0
	github.com/astaxie/beego v1.12.1
	github.com/boombuler/barcode v1.0.0
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.57.0
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/jinzhu/gorm v1.9.12
	github.com/robfig/cron/v3 v3.0.1
	github.com/tealeg/xlsx/v3 v3.0.0
	github.com/unknwon/com v1.0.1
	gopkg.in/ini.v1 v1.57.0 // indirect
)
