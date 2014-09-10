angular.module 'pmLucky.statistics', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'statistics'
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state moduleName, 
    url: '/'+ moduleName
    views: 
      'header': {}
      'content': {templateUrl: 'templates/'+moduleName+'/index.html'}
  return
]