
<!-- README.md is generated from README.Rmd. Please edit that file -->
websearchr
==========

The goal of websearchr is to provide a convenient way of accessing domains and searching popular websites directly from the R console. When working on small screens in particular, switching from the R console to the browser window, opening a new tab, navigating to the desired website and finally searching for the search terms requires around 3-6 clicks. As one is working mainly in the R console, it is more convenient to start typing the search terms right away, without having to go through the process mentioned above. For example, `stackoverflow("my r problem")` will open the stackoverflow search for "my r problem" in a new browser tab automatically.

Currently supported websites:

-   Bing
-   Crossref
-   Duckduckgo
-   GitHub
-   Google
-   Google Scholar
-   Rdocumentation.org
-   rdrr.io
-   Stackoverflow
-   Twitter
-   Wikipedia

Any other website can be accessed with `open(my-website.com)`.

Bonus: obtain the number of Google hits for a combination of search terms with `google.hits("search terms")`.

To use a browser other than the default on your computer use `options(browser = "path to browser")`. For example, on Mac OS X `options(browser = "/usr/bin/open -a '/Applications/Safari.app'")` or Windows `options(browser = "C:\\Program Files (x86)\\Internet Explorer\\iexplore.exe")`. To check which browser is set as the default use `getOption("browser")`.

Installation
------------

You can install websearchr from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("fschaff/websearchr")
```

Please report issues or requests for additional functionality to <https://github.com/fschaff/websearchr/issues>

Example
-------

``` r
library(websearchr)
#> 
#> Attaching package: 'websearchr'
#> The following object is masked from 'package:base':
#> 
#>     open

## Try:
open(r-project.org)
#> Opening https://www.r-project.org in browser
google("my search terms")
#> Opening Google search for "my search terms" in browser.
stackoverflow("my r problem")
#> Opening Stackoverflow search for "my r problem" in browser.
```
