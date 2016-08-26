#! /usr/bin/env Rscript

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "ioslides_presentation",
                  output_file   = "Presentation.html")

# html_document themes
rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web.html")

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web_flatly.html", output_options = list(theme = "flatly"))

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web_simplex.html", output_options = list(theme = "simplex"))

rmarkdown::render(input         = "presentation.Rmd",
                  output_format = "html_document",
                  output_file   = "Presentation_web_yeti.html", output_options = list(theme = "yeti"))


# prettydoc::html_pretty themes
# rmarkdown::render(input         = "presentation.Rmd",
#                   output_format = "prettydoc::html_pretty",
#                   output_file   = "Presentation_web_pretty_cayman.html", output_options = list(theme = "cayman"))
# rmarkdown::render(input         = "presentation.Rmd",
#                   output_format = "prettydoc::html_pretty",
#                   output_file   = "Presentation_web_pretty_tactile.html", output_options = list(theme = "tactile"))
# rmarkdown::render(input         = "presentation.Rmd",
#                   output_format = "prettydoc::html_pretty",
#                   output_file   = "Presentation_web_pretty_architect.html", output_options = list(theme = "architect"))

current_user <- system(command = "whoami", intern = T)

if (current_user == "Lukas") {
  out_dir <- "~/BitTorrent Sync/public.tadaa-data.de/QM/pruefungstutorien/qm2_sose_16/"
} else if (current_user == "tobias") {
  out_dir <- "~/Dokumente/tadaa-data/pruefungstutorium_qm2_16/output"
} else {
  out_dir <- ""
}

if (out_dir == "") {
  stop("No output directory defined")
}

out_docs   <- c(list.files(pattern = "*.html"), "presentation.Rmd")
out_assets <- c("RStudio-Ball.png", "styles.css", "plots", "assets", "img")

sapply(out_docs,   file.copy, to = out_dir, overwrite = T, recursive = F)
sapply(out_assets, file.copy, to = out_dir, overwrite = T, recursive = T)
