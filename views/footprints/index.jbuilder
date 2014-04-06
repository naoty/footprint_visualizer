json.type "GeometryCollection"
json.geometries @footprints do |footprint|
  json.type "MultiPoint"
  json.coordinates footprint.coordinates
end
