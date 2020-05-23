package main

//项目启动、路由文件

import (
	"fmt"
	"gin-blog/models"
	"gin-blog/pkg/gredis"
	"gin-blog/pkg/logging"
	"gin-blog/pkg/setting"
	"gin-blog/routers"
	"github.com/gin-gonic/gin"
	"log"
	"net/http"
)

func main() {
	//这样把GET方法等卸载main函数里面不太好，将它写到了routers里面
	/*router := gin.Default()

	router.GET("/test", func(context *gin.Context) {
		context.JSON(200, gin.H{
			"message": "测试",
		})
	})*/

	//gin.SetMode(setting.RunMode)
	//
	//router := routers.InitRouter()
	//
	//s := &http.Server{
	//	Addr:           fmt.Sprintf("localhost:%d", setting.HTTPPort),
	//	Handler:        router,
	//	ReadTimeout:    setting.ReadTimeout,
	//	WriteTimeout:   setting.WriteTimeout,
	//	MaxHeaderBytes: 1 << 20,
	//}
	//
	////打印运行的端口信息
	//endPoint := fmt.Sprintf(":%d", setting.HTTPPort)
	//log.Printf("[info] start http server listening %s", endPoint)
	//
	//s.ListenAndServe()

	//实现 Golang HTTP/HTTPS 服务重新启动的零停机:windows不支持
	/*endless.DefaultHammerTime = setting.ReadTimeout
	endless.DefaultWriteTimeOut = setting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	endPoint := fmt.Sprintf(":%d", setting.HTTPPort)

	server := endless.NewServer(endPoint, routers.InitRouter())

	server.BeforeBegin = func(add string) {
		log.Printf("Actual pid is %d", syscall.Getpid())
	}

	err := server.ListenAndServe()
	if err != nil {
		log.Printf("Server err: %v", err)
	}*/

	setting.Setup() //初始化全局配置（读取配置文件中的信息）
	models.Setup()  //初始化数据库引擎
	logging.Setup() //初始化日志文件

	gredis.Setup() //初始化redis

	gin.SetMode(setting.ServerSetting.RunMode) //设置项目运行模式

	routersInit := routers.InitRouter() //初始化路由

	endPoint := fmt.Sprintf("localhost:%d", setting.ServerSetting.HttpPort) //项目运行的“地址:端口“

	server := &http.Server{
		Addr:           endPoint,
		Handler:        routersInit,
		ReadTimeout:    setting.ServerSetting.ReadTimeout,
		WriteTimeout:   setting.ServerSetting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	log.Printf("[info] start http server listening %s", endPoint)

	server.ListenAndServe()
}
