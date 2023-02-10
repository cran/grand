## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
knitr::opts_knit$set(global.par = TRUE)

## ----setup--------------------------------------------------------------------
library(grand)

## -----------------------------------------------------------------------------
data(airport)

## -----------------------------------------------------------------------------
airport <- grand(airport, interactive = FALSE, #Apply GRAND non-interactively
                 name = "US Air Traffic Network",
                 doi = "10.1371/journal.pone.0269137",
                 vertex1 = "Airports",
                 vertex1.total = 382,
                 edge.pos = "Routes",
                 weight = "Passengers",
                 measure = "Count",
                 mode = "Archival",
                 year = "2019",
                 topology = c("clustering coefficient", "mean path length", "degree distribution"))

## -----------------------------------------------------------------------------
grand.text(airport)

## ---- fig.width=3.5, fig.height=4---------------------------------------------
grand.table(airport)

## ---- fig.width=3.5, fig.height=4---------------------------------------------
data(cosponsor)
grand.text(cosponsor)
grand.table(cosponsor)

## ---- fig.width=3.5, fig.height=4---------------------------------------------
data(senate)
grand.text(senate)
grand.table(senate)

