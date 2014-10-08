angular.module 'pmLucky.luckyDraw.prize'
.controller 'listCtrl', ['prizesFactory', 'htmlSortable', (prizesFactory)->
  this.items = prizesFactory.list()

  this.delete = (el)->
    prizesFactory.delete(el)

  this.update = ()->
    prizesFactory.update()
  this.copy = (el)->
    
  return
]