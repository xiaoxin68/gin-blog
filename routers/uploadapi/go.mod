module gin-blog/routers/uploadapi

go 1.14

require (
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
    gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
    gin-blog/pkg/upload v0.0.0-00010101000000-000000000000 // indirect
)

replace (
	gin-blog/pkg/e => ./../../pkg/e
	gin-blog/pkg/logging => ./../../pkg/logging
	gin-blog/pkg/upload => ./../../pkg/upload
	gin-blog/pkg/file => ./../../pkg/file
    gin-blog/pkg/setting => ./../../pkg/setting
    gin-blog/pkg/util => ./../../pkg/util
)
