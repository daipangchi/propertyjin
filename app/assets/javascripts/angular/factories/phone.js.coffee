@application.factory('Phone', ['railsResourceFactory', (railsResourceFactory) ->
  railsResourceFactory({
    url: '/api/v1/phones',
    name: 'phone',
    rootWrapping: true
  })
])