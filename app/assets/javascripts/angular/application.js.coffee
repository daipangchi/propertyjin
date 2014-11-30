@application = angular.module('siemenscollection', ['rails', 'ngResource', 'templates', 'ui.router', 'Devise', 'angularFileUpload'])

@application.config(['$locationProvider', '$httpProvider','$stateProvider','$urlRouterProvider', ($locationProvider, $httpProvider, $stateProvider, $urlRouterProvider) ->

  $httpProvider.interceptors.push(($q) ->
    'response': (response) ->
      response
    ,
    'responseError': (rejection) ->
      status = rejection.status
      if status == 401
        window.location = "/"
        return
      if status == 500
        alert("Server error. Try again later.")
        return
      if status == 408
        alert("Server not responding. Try again later.")
        return
      $q.reject(rejection)
  )

  $urlRouterProvider.otherwise("/")

  $stateProvider
    .state('phones', {
      abstract: true,
      url: "/",
      templateUrl: "phones/index.html",
      controller: "phones_index"
    })
    .state('phones.list', {
      url: "",
      templateUrl: "phones/list.html",
      controller: "phones_list"
    })

  $locationProvider.html5Mode(true)
])

.run(['$rootScope', '$state', ($rootScope, $state) ->
  $rootScope.$on('$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
    $rootScope.loading = true
  )

  $rootScope.isState = (states) ->
    $state.includes(states)

])