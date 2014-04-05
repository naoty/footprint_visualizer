window.ngApp.factory "Footprint", ($resource) ->
  actions =
    new:
      method: "GET"
      url: "/footprints/new"
  $resource "/footprints/:id", {}, actions
