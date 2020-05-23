module gin-blog/middleware/jwt

go 1.14

replace (
	gin-blog/pkg/e => ../../pkg/e
	gin-blog/pkg/setting => ../../pkg/setting
	gin-blog/pkg/util => ../../pkg/util
)

require (
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/util v0.0.0-00010101000000-000000000000 // indirect
)
