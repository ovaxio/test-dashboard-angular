angular.module 'pmLucky.luckyDraw.price'
.controller 'listCtrl', ['$scope', 'pricesFactory', ($scope, pricesFactory)->
  $scope.items = pricesFactory.list()

  $scope.deletePrice = (el)->
    pricesFactory.delete(el)

  $scope.copyPrice = (el)->
    
  return
]