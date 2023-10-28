library(plumber)

#* @apiTitle Example API
#* @apiDescription This is a sample API for accessing data.
#* @apiVersion 0.0.0.9000

#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  plumber::forward()
}

#* Get example data
#* @get /data/
#* @serializer unboxedJSON
myapi:::get_my_data
