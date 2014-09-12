angular.module 'pmLucky.luckyDraw.price', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->

  $stateProvider
  .state 'luckydraw.price', 
    abstract: true
    url: '/price'
    views:
      'content': 
        templateUrl: 'templates/luckydraw/price/index.html'

    
  .state 'luckydraw.price.new', 
    url: '/new'
    views:
      'content': 
        templateUrl: 'templates/luckydraw/price/new.html'

  .state 'luckydraw.price.list', 
    url: '/list'
    views:
      'content': 
        templateUrl: 'templates/luckydraw/price/list.html'
  return
]