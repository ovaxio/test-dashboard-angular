angular.module 'pmLucky.luckyDraw.price'
.factory 'pricesFactory', ()->
  uid = 1

  prices = [
    { id: 0, title: 'test 1' }
  ]

  this.delete = (item)->
    for el,i in prices
      if el is item
        prices.splice i, 1
    return

  this.list = ()->
    return prices

  this.get = (id)->
    console.log prices
    for el in prices
      if ''+el.id is ''+id
        return el
    false

  return this