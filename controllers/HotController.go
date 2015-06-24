package controllers

import (
	"github.com/astaxie/beego"
)

type HotController struct {
	beego.Controller
}

func (c *HotController) Get() {
	//c.Data["Website"] = "beego.me"
	//c.Data["Email"] = "astaxie@gmail.com"
	//c.Data["hello"] = "hello world"
	//c.TplNames = "index.tpl"
	c.TplNames = "hot/hot.tpl"
}
