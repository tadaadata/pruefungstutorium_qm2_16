#! /usr/bin/env Rscript

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "ioslides_presentation",
                  output_file   = "Presentation.html")

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web.html")

if (system(command = "whoami", intern = T) == "Lukas") {
  file.copy("plots",                 to = "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/", overwrite = T, recursive = T)
  file.copy("RStudio-Ball.png",      to = "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/", overwrite = F)
  file.copy("styles.css",            to = "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/", overwrite = T)
  file.copy("Presentation.html",     to = "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/", overwrite = T)
  file.copy("Presentation_web.html", to = "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/", overwrite = T)
}
