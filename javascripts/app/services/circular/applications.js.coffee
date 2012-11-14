@services.factory('Applications', 
  ['$resource', ($resource) ->
    url = '/applications.json'
    Applications = $resource(url, {}, {
      query: { 
        method: 'GET',
        isArray: false
      }
    })

    Applications
  ]
)

