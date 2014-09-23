angular.module 'pmLucky.sharing', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'sharing'
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state moduleName, 
    url: '/'+ moduleName
    views: 
      'menuView': {}
      'content': {templateUrl: 'templates/'+moduleName+'/index.html'}
  return
]