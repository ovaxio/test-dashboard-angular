angular.module 'pmLucky.home', ['ui.router']
  .config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
    moduleName = 'home'
    $urlRouterProvider.otherwise '/'

    $stateProvider
    .state moduleName, 
      url: '/'
      views: 
        'menuView': {}
        'content': 
          templateUrl: 'templates/'+moduleName+'/content-index.html'
          controller: 'homeCtrl'
    return
  ]  