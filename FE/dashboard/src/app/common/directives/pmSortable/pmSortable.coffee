angular.module 'pmLucky'
.directive 'pmSortable', ()->
  return {
    restrict: 'A'
    scope:{
      pmSortable: '='
    }
    link: (scope, element, attrs)->
      scope.$watch 'pmSortable', ()->
        angular.element element 
        .sortable()
  }