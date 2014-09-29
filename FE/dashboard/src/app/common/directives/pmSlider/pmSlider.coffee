angular.module 'pmLucky'
.directive 'pmSlider', ()->
  return {
    restrict: 'A'
    templateUrl: 'templates/common/directives/pmSlider.html'
    scope:
      pmSlider: '='
    link: (scope, element)->
      scope.$watch 'pmSlider', ()->
        angular.element element 
        .children 'input'
        .slider()

  }