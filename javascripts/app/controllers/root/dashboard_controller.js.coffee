@app.controller('DashboardController', 
  [ '$scope','$rootScope','Applications'
    ($scope, $rootScope, Applications) ->
      # Current application for breadcrumbs
      # TODO try to find better way to recognize current application
      $rootScope.current_application = 'circular'

      # If is this controller routable set $rootScope.current_action
      $rootScope.current_action = "dashboard"

      $scope.apps = Applications.query()
  ]
)
