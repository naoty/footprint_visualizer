window.ngApp.controller "VisualizerController", ($scope, Footprint) ->
  $scope.footprints = Footprint.new()
