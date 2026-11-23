## Regenerate manifest.json for Posit Connect Cloud
##
## Run from the repository root on the deploy-3.23 branch in an R session
## whose library holds only Bioconductor 3.23 (release) packages. The
## manifest pins BiocHubsShiny to the GitHub commit installed below and all
## other packages to the 3.23 Bioconductor and CRAN repositories.
##
## After running, check that manifest.json lists BiocHubsShiny with
## "Source": "github" and the expected RemoteSha, then commit and push
## manifest.json to origin/deploy-3.23 (never to upstream).

stopifnot(
    identical(as.character(BiocManager::version()), "3.23")
)
options(repos = BiocManager::repositories())

remotes::install_github(
    "Bioconductor/BiocHubsShiny@deploy-3.23", upgrade = "never"
)
print(
    utils::packageDescription("BiocHubsShiny")[
        c("Version", "RemoteRef", "RemoteSha")
    ]
)

## appFiles = "app.R" keeps this script, tests/ and vignettes/ out of the
## dependency scan
rsconnect::writeManifest(appFiles = "app.R")
