angular.module 'pmLucky.home', ['ui.router']
  .config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
    moduleName = 'home'
    $urlRouterProvider.otherwise '/'

    $stateProvider
    .state moduleName, 
      url: '/'
      views: 
        'header': {}
        'content': 
          templateUrl: 'templates/'+moduleName+'/index.html'
          controller: 'homeCtrl'
    return
  ]  