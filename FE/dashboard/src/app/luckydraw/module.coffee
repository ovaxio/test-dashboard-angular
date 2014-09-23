angular.module 'pmLucky.luckyDraw', ['pmLucky.luckyDraw.price','ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'luckydraw'
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state moduleName, 
    url: '/'+ moduleName
    views: 
      'menuView': {}
      'content': { templateUrl: 'templates/'+moduleName+'/index.html'}

  return
]