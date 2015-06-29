package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"strings"
)

type FileController struct {
	beego.Controller
}

/**
文件上传，返回文件路径
*/
func (this *FileController, ctx *context.Context) Uploadfile() {
	fmt.Println("--------------------------------------")
	var sss string = this.ctx.Request.URL.Path
	fmt.Println(sss)
	fmt.Println("--------------------------------------")
	f, h, err := this.GetFile("UpLoadFile")
	if err != nil {
		fmt.Println("getfile err ", err)
	}
	fmt.Println("filename:", h.Filename)

	filename := h.Filename[strings.LastIndex(h.Filename, `:`)+1:]
	path := `D:\Go\bin\src\test_bee\static\upload\` + filename
	fmt.Println(path)
	f.Close()
	err = this.SaveToFile("UpLoadFile", path)
	if err != nil {
		fmt.Println("err:", err)
	}
	this.Redirect("", 302)
}
