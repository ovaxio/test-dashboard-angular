package routers

import (
	"github.com/astaxie/beego"
	"github.com/magicshui/pm-lucky/BE/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
}
