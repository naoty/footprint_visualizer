window.ngApp.factory "Footprint", ($resource) ->
  actions =
    query:
      isArray: false
  Footprint = $resource "/footprints/:id", { id: "@id" }, actions

  angular.extend Footprint.prototype,
    d: (width, height) ->
      if @geometries is undefined
        "undefined"
      else
        xScale = d3.scale.linear().domain([0, 1]).range([0, width])
        yScale = d3.scale.linear().domain([0, 1]).range([0, height])
        x = (d) -> xScale(d[0])
        y = (d) -> yScale(d[1])
        line = d3.svg.line().x(x).y(y).interpolate("cardinal")
        line(@geometries[0].coordinates)

  Footprint
