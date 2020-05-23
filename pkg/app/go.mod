module gin-blog/pkg/app

go 1.14

replace (
	gin-blog/pkg/file => ../file
	gin-blog/pkg/logging => ../logging
	gin-blog/pkg/setting => ../setting
	gin-blog/pkg/e => ../e
)

require (
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/e v0.0.0-00010101000000-000000000000 // indirect
	github.com/astaxie/beego v1.12.1 // indirect
	github.com/gin-gonic/gin v1.6.3 // indirect
)
