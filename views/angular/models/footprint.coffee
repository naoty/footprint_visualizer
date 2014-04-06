window.ngApp.factory "Footprint", ($resource) ->
  actions =
    query:
      isArray: false
  $resource "/footprints/:id", { id: "@id" }, actions
