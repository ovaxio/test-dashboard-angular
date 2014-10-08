angular.module 'pmLucky.luckyDraw', ['pmLucky.luckyDraw.prize','ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  moduleName = 'luckydraw'
  $urlRouterProvider.otherwise '/'

  states =
    main: 
      abstract: true
      url: '/'+ moduleName
      views: 
        'content': { templateUrl: 'templates/'+moduleName+'/index.html'}

  $stateProvider
  .state moduleName, states.main
    

  return
]