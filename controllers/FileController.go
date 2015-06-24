package controllers

import (
	"github.com/astaxie/beego"
)

type FileController struct {
	beego.Controller
}

beego.Get("/file/upload",func(ctx *context.Context){
    f, h, _ := this.GetFile("image")    //获取上传的文件
    path := this.Input().Get("url") //存文件的路径    
	path = path[7:]     
	path = "./static/img/" + path + "/" + h.Filename        
	f.Close()   // 关闭上传的文件，不然的话会出现临时文件不能清除的情况    
	this.SaveToFile("image", path)  //存文件    WaterMark(path)    //给文件加水印    
	this.Redirect("/addphoto", 302)

})