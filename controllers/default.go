package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	//c.Data["Website"] = "beego.me"
	//c.Data["Email"] = "astaxie@gmail.com"
	c.Data["hello"] = "hello world"
	//c.TplNames = "index.tpl"
	c.TplNames = "main.tpl"
}
