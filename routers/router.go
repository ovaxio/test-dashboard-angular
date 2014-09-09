package routers

import (
	"github.com/astaxie/beego"
	"github.com/magicshui/pm-lucky/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
}
