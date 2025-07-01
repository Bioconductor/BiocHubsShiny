# Launch the ShinyApp (Do not remove this comment)

options(repos = BiocManager::repositories())

BiocHubsShiny::BiocHubsShiny(host = '0.0.0.0', port = 3838)
