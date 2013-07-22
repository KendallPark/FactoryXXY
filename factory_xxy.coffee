FactoryXXY =
  build: (obj) -> 
    object = {}
    for key, value of obj
      value = value()
      if value instanceof Object
        value = @build(value)
      object[key] = value
    return object
    
  buildUnique: (obj, iter) ->
    object = {}
    for key, value of obj
      object[key] = value(iter[key])
      iter[key]++
    
  
  buildMany: (obj, num) ->
    iter = {}
    for key, value of obj
      if key.indexOf("$") isnt -1
        iter[key] = 0
    for i in num
      @buildUnique(obj, iter)
      
  integer: (n) ->
    n
  
  string: (n) ->
    "a"+n