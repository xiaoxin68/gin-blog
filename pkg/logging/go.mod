module gin-blog/pkg/logging

go 1.14

require (
	gin-blog/pkg/setting v0.0.0-00010101000000-000000000000 // indirect
	gin-blog/pkg/file v0.0.0-00010101000000-000000000000 // indirect
)

replace (
	gin-blog/pkg/file => ../file
	gin-blog/pkg/setting => ../setting
)
