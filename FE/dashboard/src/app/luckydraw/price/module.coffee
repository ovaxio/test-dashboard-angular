angular.module 'pmLucky.luckyDraw.price', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->

  $stateProvider
  .state 'luckydraw.price', 
    abstract: true
    url: '/price'
    views:
      'priceView': 
        templateUrl: 'templates/luckydraw/price/index.html'

  .state 'luckydraw.price.list', 
    url: ''
    views:
      'priceContent': 
        templateUrl: 'templates/luckydraw/price/list.html'

  .state 'luckydraw.price.new', 
    url: '/new'
    views:
      'content@': 
        templateUrl: 'templates/luckydraw/price/edit.html'
        controller: ['$scope', ($scope)->
          $scope.title = 'New Price'
        ]

  .state 'luckydraw.price.edit', 
    url: '/:priceId'
    views:
      'content@': 
        templateUrl: 'templates/luckydraw/price/edit.html'
        controller: ['$scope', '$state', 'pricesFactory', ($scope, $state,pricesFactory)->
          $scope.edit = true
          $scope.title = 'Edit Price'
          $scope.price = pricesFactory.get $state.params.priceId
        ]
  return
]