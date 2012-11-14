@app.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    # Support application
    # TODO conditional routing according to backend availability
    
    # default controller in application
    .when('/circular/dashboard', 
      {
        templateUrl: '/circular/root/dashboard.html',
        controller:  'DashboardController'
      })

    .otherwise({redirectTo: '/circular/dashboard'})
  ]
