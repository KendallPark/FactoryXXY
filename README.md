FactoryXXY
==========

A coffeescript fixture factory similar to FactoryGirl and FactoryBoy

    boy = 
      age: -> Int.random(16,20)
      id: -> Int.unique(1)
      name: -> Str.unique("Jack")
      lastName: -> Str.random(5)
      eyes: -> Arr.random(["green", "blue", "brown", "hazel", "black"])
        
    girl =
      age: -> 17
      id: -> Int.unique(10)
      name: -> Arr.unique(["Jill", "Jane", "Jenny", "Joan"])
      school: -> "Ladue High School"
      boyfriend: -> boy
        
    console.log FactoryXXY.build(girl)
    console.log FactoryXXY.buildMany(girl, 3)

### TODO
- Unique doesn't actually guarantee a unique id. Should make a hash to take care of that.
- Need some way to generate tree-like data. 
- Support for bi-directional binding