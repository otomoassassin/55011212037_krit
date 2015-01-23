// Playground - noun: a place where people can play
class frrstye {
let zoo:[String] = ["giraffe","horse","snake","ant"];
let food:[String]=["grass","potato","carrot","mile"]

    let animalupdate:String
    
    init(animal:String){
        self.animalupdate=animal
    }
    
    func update() -> String{
        var ans:String = ""
        for (var i=0; i<zoo.count;i++){
            
            
            if(zoo[i]==animalupdate){
                ans=food[i]
            }
        }
        return ans
    }

    
}
let sum = frrstye(animal:"horse")
sum.update()
