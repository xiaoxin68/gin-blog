module gin-blog/service/auth_service

go 1.14

require (
	gin-blog/models v0.0.0-00010101000000-000000000000 // indirect
)

replace (
	gin-blog/models => ../../models
	gin-blog/pkg/setting => ../../pkg/setting
)