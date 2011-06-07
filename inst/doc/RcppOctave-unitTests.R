### R code from vignette source 'RcppOctave-unitTests.Rnw'

###################################################
### code chunk number 1: RcppOctave-unitTests.Rnw:10-15
###################################################
pkg <- 'RcppOctave'
require( pkg, character.only=TRUE )
prettyVersion <- packageDescription(pkg)$Version
prettyDate <- format(Sys.Date(), '%B %e, %Y')
authors <- packageDescription(pkg)$Author


