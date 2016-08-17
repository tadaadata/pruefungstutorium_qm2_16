#! /usr/bin/env Rscript

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "ioslides_presentation",
                  output_file   = "Presentation.html")

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web.html")

current_user <- system(command = "whoami", intern = T)

if (current_user == "Lukas") {
  out_dir <- "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/"
} else if (current_user == "Tobi") {
  out_dir <- ""
} else {
  out_dir <- ""
}

if (out_dir == "") {
  stop("No output directory defined")
}

out_docs   <- c("Presentation.html", "Presentation_web.html", "presentation.Rmd")
out_assets <- c("RStudio-Ball.png", "styles.css")

sapply(out_docs,   file.copy, to = out_dir, overwrite = T, recursive = F)
sapply(out_assets, file.copy, to = out_dir, overwrite = T, recursive = T)

