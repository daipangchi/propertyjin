@application.controller 'phones_show', ['$scope', 'Phone', '$rootScope', '$stateParams', ($scope, Phone, $rootScope, $stateParams) ->
  $scope.phone = Phone.new

  Phone.get({ id: $stateParams.id }).then( (phone) ->
    $scope.phone = phone
    $rootScope.loading = false
  )
]