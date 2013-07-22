FactoryXXY
==========

A coffeescript fixture factory similar to FactoryGirl and FactoryBoy

account = 
  id: -> 1
  name: -> "Kendall"
  type: -> "Asset"
  categoryId: -> 4

user = 
  id: -> 1
  name: -> "Whatever bro"
  account: -> account
    
girlfriend = 
  id: -> Int.unique(3)
  name: -> Str.unique("Cindy")
  age: -> Int.random(5,19)
  lastName: -> Str.random(3)
  
    
boyfriend = 
  id: -> Int.unique(0)
  name: -> Str.unique("name")
  age: -> Int.random(0, 5)
  lastName: -> Str.random(20)
  girlfriend: -> girlfriend
  friends: -> FactoryXXY.buildMany(user, 3)

console.log "this stuff", FactoryXXY.buildMany(user, 3)
console.log FactoryXXY.buildMany(boyfriend, 10)