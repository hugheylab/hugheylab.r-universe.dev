library('data.table')
library('jsonlite')

d = data.table(
  package = c('metapredict', 'zeitzeiger', 'deltaccd', 'tipa', 'limorhyde',
              'simphony', 'spectr', 'pmparser', 'limorhyde2', 'seeker'))
d[, url := paste0('https://github.com/hugheylab/', package)]

jsonlite::write_json(d, 'packages.json', pretty = TRUE)