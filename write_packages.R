library('data.table')
library('jsonlite')

d = data.table(package = c(
  # 'metapredict', # exclude due to vignettes
  'zeitzeiger',
  'deltaccd',
  'tipa',
  'limorhyde',
  'simphony',
  'spectr',
  'pmparser',
  'limorhyde2',
  'seeker',
  'phers'))

d[, url := paste0('https://github.com/hugheylab/', package)]

write_json(d, 'packages.json', pretty = TRUE)
