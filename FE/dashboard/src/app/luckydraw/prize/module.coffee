angular.module 'pmLucky.luckyDraw.prize', ['ui.router']
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  

  prizeCtrls =
    'edit' : ($scope, $state, prizesFactory)->
      $scope.edit = true
      $scope.title = 'Edit prize'
      $scope.prize = prizesFactory.get $state.params.prizeId

    'new' : ($scope)->
      $scope.title = 'New prize'

  prizeStates = 
    main: 
      abstract: true
      url: '/prize'
      views:
        'prizeView': 
          templateUrl: 'templates/luckydraw/prize/index.html'
    list: 
      url: ''
      views:
        'prizeContent': 
          templateUrl: 'templates/luckydraw/prize/list.html'
    'new':
      url: '/new'
      views:
        'content@': 
          templateUrl: 'templates/luckydraw/prize/edit.html'
          controller: ['$scope', prizeCtrls['new']]
    edit: 
      url: '/:prizeId'
      views:
        'content@': 
          templateUrl: 'templates/luckydraw/prize/edit.html'
          controller: ['$scope', '$state', 'prizesFactory', prizeCtrls.edit]

  $stateProvider
  .state 'luckydraw.prize', prizeStates.main
  .state 'luckydraw.prize.list', prizeStates.list
  .state 'luckydraw.prize.new', prizeStates['new']
  .state 'luckydraw.prize.edit', prizeStates.edit

  return
]