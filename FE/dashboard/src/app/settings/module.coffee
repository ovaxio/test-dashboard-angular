angular.module 'pmLucky.settings', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'settings'
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state moduleName, 
    url: '/'+ moduleName
    views: 
      'menuView': {}
      'content': {templateUrl: 'templates/'+moduleName+'/index.html'}
  return
]