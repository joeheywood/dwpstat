
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `dwpstat`

[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1421684.svg)](https://doi.org/10.5281/zenodo.1421684)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

This package provides access to the ‘Stat-Xplore Open Data API’,
containing welfare statistics from the UK Department for Work and
Pensions.

The ‘Stat-Xplore Open Data API’ is a JSON REST API, with the same data
as on the [Stat-Xplore](https://stat-xplore.dwp.gov.uk/) online service.
All queries require the use of an API key. To set up an API key, use
\[dwp\_api\_key()\]. The API is free to use, but queries are rate
limited. To find the number of allowable queries per hour, and the
number of queries remaining, use \[dwp\_rate\_limit()\].

Full documentation of the API is available
(here)\[<https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API.html>\].

`dwpstat` returns metadata in
(`tibble`)\[<https://cran.r-project.org/package=tibble>\] format, and
data in a list format.

## Installation

You can install the development version of `dwpstat` from GitHub with:

    # install.packages("devtools")
    devtools::install_github("evanodell/dwpstat")

``` r
library(dwpstat)
x <- dwp_get_data(database = "str:database:ESA_Caseload",
                   measures = "str:count:ESA_Caseload:V_F_ESA",
                   column = c("str:field:ESA_Caseload:V_F_ESA:CCSEX",
                              "str:field:ESA_Caseload:V_F_ESA:CTDURTN"),
                   row = "str:field:ESA_Caseload:V_F_ESA:ICDGP",
                   wafer = "str:field:ESA_Caseload:V_F_ESA:IB_MIG")

class(x)
#> [1] "list"
```

## Meta

Bug reports, feature requests and pull requests are all welcome.

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.

This project is not affiliated with or endorsed by the Department for
Work and Pensions.

Get citation information for `dwpstat` in R with `citation(package =
'dwpstat')`

Odell E (2018). *dwpstat: Access ‘Stat-Xplore’ data on the UK benefits
system*. doi: 10.5281/zenodo.1421684 (URL:
<http://doi.org/10.5281/zenodo.1421684>), R package version 0.0.0.9000,
\<URL: <https://github.com/evanodell/dwpstats>\>.

A BibTeX entry for LaTeX users is

@Manual{, title = {{dwpstat}: Access ‘Stat-Xplore’ data on the UK
benefits system}, author = {Evan Odell}, year = {2018}, note = {R
package version 0.0.0.9000}, doi = {10.5281/zenodo.1421684}, url =
{<https://github.com/evanodell/dwpstats>}, }

License: [MIT](LICENSE.md)
