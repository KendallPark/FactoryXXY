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

Last line outputs something like:

    [
       {
          "age":17,
          "id":10,
          "name":"Jill",
          "school":"Ladue High School",
          "boyfriend":{
             "age":19,
             "id":1,
             "name":"Jack0",
             "lastName":"amk2k",
             "eyes":"brown"
          }
       },
       {
          "age":17,
          "id":11,
          "name":"Jane",
          "school":"Ladue High School",
          "boyfriend":{
             "age":19,
             "id":1,
             "name":"Jack0",
             "lastName":"7tsrt",
             "eyes":"brown"
          }
       },
       {
          "age":17,
          "id":12,
          "name":"Jenny",
          "school":"Ladue High School",
          "boyfriend":{
             "age":17,
             "id":1,
             "name":"Jack0",
             "lastName":"mtqoq",
             "eyes":"hazel"
          }
       }
    ]

### TODO
- Unique doesn't actually guarantee a unique id. Should make a hash to take care of that.
- Need some way to generate tree-like data. 
- Support for bi-directional binding