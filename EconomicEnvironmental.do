log using EconomicEnvironmental.smcl, replace

gen loggdp = log(gdp)

xtile gdpquartile = gdp, nq(4)

correlate environmental economic
scatter environmental economic

correlate environmental gdp
scatter environmental gdp

correlate environmental loggdp
scatter environmental loggdp

correlate gdp economic
scatter gdp economic

correlate loggdp economic
scatter loggdp economic

regress environmental economic

regress environmental gdp

regress gdp economic

regress loggdp economic

regress environmental loggdp

regress environmental economic gdp

regress environmental economic loggdp

regress environmental economic gdpquartile

regress environmental economic if gdpquartile == 1
regress environmental economic if gdpquartile == 2
regress environmental economic if gdpquartile == 3
regress environmental economic if gdpquartile == 4

translate EconomicEnvironmental.do EconomicEnvironmentalGDPdo.pdf, translator(txt2pdf) replace
translate EconomicEnvironmental.smcl EconomicEnvironmentalLog.pdf, translator(txt2pdf) replace

log close