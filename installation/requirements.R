#!/usr/bin/env Rscript

# Install base packages from different sources

# Import installation functions
source('install_packages.R')

# Packages for which we want the stable version
# (installed from CRAN), specified as a character vector.
stable_packages <- c(
                  'curl',
                  'devtools',
                  'knitr',
                  'tidyverse'
                    )

install_stable(stable_packages)

# Packages for which we want specific versions
# (also installed from CRAN), specified as
# list(package_name=package_version)

specific_version_packages <- list()


# Packages to be installed from github repositories
# specified as a character vector of user/repository
github_packages <- c('gaborcsardi/dotenv')
sapply(github_packages, install_github)

