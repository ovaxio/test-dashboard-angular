angular.module 'pmLucky'
.directive 'pmSpinner', ()->
  return {
    restrict: 'A'
    templateUrl: 'templates/common/directives/pmSpinner.html'
    scope:
      pmSpinner: '='
  }