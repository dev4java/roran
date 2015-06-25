package routers

import (
	"github.com/astaxie/beego"
	"test_bee/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/hot", &controllers.HotController{})
	beego.Router("/publish", &controllers.PublishController{})
	beego.Router("/file/upload", &controllers.FileController{}, "post:Uploadfile")
}
