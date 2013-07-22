Int =
  unique: (min) ->
    return (iter) -> min + iter
  
  random: (min, max) ->
    Math.floor(Math.random()*(max-min+1))+min
    
Str =
  unique: (base) ->
    return (iter) -> base + iter
  
  random: (chars) ->
    Math.random().toString(36).substring(2, chars + 2)

FactoryXXY =
  build: (obj) -> 
    buildUnique(obj, 0)
    
  buildUnique: (obj, iter) ->
    object = {}
    for key, value of obj
      value = value.call()
      if typeof(value) is "function"
        value = value(iter)
      else if value instanceof Array
      else if value instanceof Object
        value = @buildUnique(value, iter*10)
      object[key] = value
    return object
    
  buildMany: (obj, num) ->
    console.log obj
    toReturn = []
    i = 0
    while i < num
      toReturn.push @buildUnique(obj, i)
      i++
    toReturn