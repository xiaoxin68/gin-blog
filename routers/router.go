package routers

import (
	"gin-blog/pkg/export"
	"gin-blog/pkg/qrcode"
	"gin-blog/pkg/upload"
	"gin-blog/routers/api"
	"gin-blog/routers/uploadapi"
	"github.com/gin-gonic/gin"
	"net/http"
)

func InitRouter() *gin.Engine {
	r := gin.New()

	r.Use(gin.Logger())

	r.Use(gin.Recovery())

	//gin.SetMode(setting.ServerSetting.RunMode)

	//r.GET("/test", func(context *gin.Context) {
	//	context.JSON(200, gin.H{
	//		"message": "测试",
	//	})
	//})

	r.StaticFS("/upload/images", http.Dir(upload.GetImageFullPath()))
	r.StaticFS("/export", http.Dir(export.GetExcelFullPath()))
	r.StaticFS("/qrcode", http.Dir(qrcode.GetQrCodeFullPath()))

	r.POST("/auth", api.GetAuth)

	r.POST("/upload", uploadapi.UploadImage)

	apiv1 := r.Group("/api/v1")
	//apiv1.Use(jwt.JWT())  //使用jwt.JWT()，限制访问；需要授权后才可以访问
	{
		//获取标签列表
		apiv1.GET("/tags", api.GetTags)
		//新建标签
		apiv1.POST("/tags", api.AddTag)
		//更新指定标签
		apiv1.PUT("/tags", api.EditTag)
		//删除指定标签
		apiv1.DELETE("/tags/:id", api.DeleteTag)

		//导出标签
		apiv1.POST("/tags/export", api.ExportTag)
		//导入标签
		apiv1.POST("/tags/import", api.ImportTag)

		//获取文章列表
		apiv1.GET("/articles", api.GetArticles)
		//获取指定文章
		apiv1.GET("/articles/:id", api.GetArticle)
		//新建文章
		apiv1.POST("/articles", api.AddArticle)
		//更新指定文章
		apiv1.PUT("/articles", api.EditArticle)
		//删除指定文章
		apiv1.DELETE("/articles/:id", api.DeleteArticle)

		//生成文章二维码图片
		apiv1.POST("/articles/poster/generate", api.GenerateArticlePoster)
	}

	return r
}
