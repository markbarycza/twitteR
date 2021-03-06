import_users = function(raw_data, conversion_func=json_to_users) {
  return(import_obj(raw_data, conversion_func))
}

import_statuses = function(raw_data, conversion_func=json_to_statuses) {
  return(import_obj(raw_data, conversion_func))
}

import_trends = function(raw_data, conversion_func=json_to_trends) {
  return(import_obj(raw_data, conversion_func))
}

import_obj = function(raw_data, conversion_func, ...) {
  return(conversion_func(raw_data, ...))
}

json_to_users = function(raw_data) {
  return(sapply(raw_data, buildUser))
}

json_to_statuses = function(raw_data) {
  return(sapply(raw_data, buildStatus))
}

json_to_trends = function(raw_data) {
  buildTrendLocationDf(raw_data)
}
