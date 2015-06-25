package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
)

type FileController struct {
	beego.Controller
}

func (this *FileController) Uploadfile() {
	f, h, err := this.GetFile("UpLoadFile")
	if err != nil {
		fmt.Println("getfile err ", err)
	}
	fmt.Println("filename:", h.Filename)
	//h.Filename中没有了\     bug?

	//暂时用自建的filename
	//filename := h.Filename[strings.LastIndex(h.Filename, `:`)+1:]
	filename := "aaa.jpg"
	path := `d:\` + filename

	f.Close()
	err = this.SaveToFile("UpLoadFile", path)
	if err != nil {
		fmt.Println("err:", err)
	}
	this.Redirect("/yang/233/uploadplms", 302)
}
