module gin-blog/service/tag_service

go 1.14

require (
	gin-blog/models v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/export v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/file v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/gredis v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/service/cache_service v0.0.0-00010101000000-000000000000 // indirect
	github.com/360EntSecGroup-Skylar/excelize/v2 v2.2.0 // indirect
	github.com/tealeg/xlsx/v3 v3.0.0 // indirect
)

replace (
	gin-blog/models => ../../models
	gin-blog/pkg/e => ../../pkg/e
	gin-blog/pkg/export => ../../pkg/export
	gin-blog/pkg/file => ../../pkg/file
	gin-blog/pkg/gredis => ../../pkg/gredis
	gin-blog/pkg/logging => ../../pkg/logging
	gin-blog/pkg/setting => ../../pkg/setting
	gin-blog/service/cache_service => ../cache_service
)
