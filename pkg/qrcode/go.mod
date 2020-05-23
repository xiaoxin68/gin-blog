module gin-blog/pkg/qrcode

go 1.14

replace (
	gin-blog/pkg/file => ../file
	gin-blog/pkg/setting => ../setting
	gin-blog/pkg/util => ../util
)

require (
	gin-blog/pkg/file v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/util v0.0.0-00010101000000-000000000000 // indirect
	github.com/boombuler/barcode v1.0.0 // indirect
)
