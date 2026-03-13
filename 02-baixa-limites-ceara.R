install.packages(sf)
library(sf)

URL_CEARA <- "https://mapas.ipece.ce.gov.br/i3geo/ogc.php?OUTPUTFORMAT=geojson&bbox=-76.512593,-36.948432,-29.585185,7.046013&service=wfs&version=1.1.0&request=getfeature&layers=limite_municipal&typeName=limite_municipal"

gdf_ceara <- st_read(URL_CEARA)

View(gdf_ceara)

st_write(gdf_ceara, "data/processed-data/limites_ceara.geojson", driver = "GeoJSON")