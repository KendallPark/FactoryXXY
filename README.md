FactoryXXY
==========

A coffeescript fixture factory similar to FactoryGirl and FactoryBoy

    boy = 
      age: -> Int.random(16-20)
      id: -> Int.unique(1)
      name: -> Str.unique("Jack")
      lastName: -> Str.random(5)
        
    girl =
      age: -> 17
      id: -> Int.unique(10)
      name: -> Str.unique("Jill")
      school: -> "Ladue High School"
      boyfriend: -> boy
        
    console.log FactoryXXY.build(girl)
    console.log FactoryXXY.buildMany(girl, 3)