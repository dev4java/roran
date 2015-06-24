package controllers

import (
	"github.com/astaxie/beego"
)

type PublishController struct {
	beego.Controller
}

func (c *PublishController) Get() {
	//c.Data["Website"] = "beego.me"
	//c.Data["Email"] = "astaxie@gmail.com"
	//c.Data["hello"] = "hello world"
	//c.TplNames = "index.tpl"
	c.TplNames = "add/add.tpl"
}
