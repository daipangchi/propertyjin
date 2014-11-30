@application.controller 'phones_list', ['$scope', 'Phone', '$rootScope', ($scope, Phone, $rootScope) ->
  $scope.phones = []

  Phone.query().then( (results) ->
    $scope.phones = results
    $rootScope.loading = false
  )
]