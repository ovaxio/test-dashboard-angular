angular.module 'pmLucky.luckyDraw.price'
.directive 'pmPriceItem', ()->
  return {
    restrict: 'A'
    controller : ['$scope', '$element', ($scope, $element)->
    ]
  }