angular.module 'pmLucky.settings', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'settings'
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state moduleName, 
    url: '/'+ moduleName
    views: 
      'content': {templateUrl: 'templates/'+moduleName+'/index.html'}
  return
]