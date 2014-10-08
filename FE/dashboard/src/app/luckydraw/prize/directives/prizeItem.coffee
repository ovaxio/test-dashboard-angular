angular.module 'pmLucky.luckyDraw.prize'
.directive 'pmprizeItem', ()->
  return {
    restrict: 'A'
    controller : ['$scope', '$element', ($scope, $element)->
    ]
  }