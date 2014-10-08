angular.module 'pmLucky.luckyDraw.prize'
.factory 'prizesFactory', ()->
  uid = 1

  prizes = [
    { id: 2, name: '99 000 000 $', description: 'Lorem ipsum', nb: 1, position: 1 }
    { id: 1, name: 'Journey to Atlantid', description: 'Lorem ipsum', nb: 10, position: 2 }
    { id: 0, name: 'Ferrari', description: 'Lorem ipsum', nb: 50, position: 3 }
  ]

  this.delete = (item)->
    for el,i in prizes
      if el is item
        prizes.splice i, 1
    return

  this.list = ()->
    return prizes

  this.get = (id)->
    for el in prizes
      if ''+el.id is ''+id
        return el
    false

  this.update = (items)->
    # prizes = items
    console.log prizes

  return this