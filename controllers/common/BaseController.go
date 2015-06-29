package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"strings"
)

/*
* Ajax返回
*
 */
func (this *BaseController) AjaxReturn(status int, msg string, data interface{}) {
	json := make(map[string]interface{})
	json["status"] = status
	json["msg"] = msg
	json["data"] = data
	this.Data["json"] = json
	this.ServeJson()
	return
}
