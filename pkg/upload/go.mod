module gin-blog/pkg/upload

go 1.14

require (
	gin-blog/pkg/file v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/logging v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/util v0.0.0-00010101000000-000000000000 // indirect
)

replace (
	gin-blog/pkg/file => ../file
	gin-blog/pkg/setting => ../setting
	gin-blog/pkg/logging => ../logging
	gin-blog/pkg/util => ../util
)
