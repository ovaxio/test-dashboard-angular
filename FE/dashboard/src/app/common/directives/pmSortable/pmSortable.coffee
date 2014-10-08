angular.module 'pmLucky'
.directive 'pmSortable', ()->
  return {
    restrict: 'A'
    scope:{
      pmSortable: '='
    }
    link: (scope, element, attrs)->
      scope.$watch 'pmSortable', ()->
        $that = angular.element element 
        .sortable
          handle: '.fa.fa-sort'
        
        $that.on 'sortupdate', (e, ui)->
          console.log scope.$parent.list.items

  }