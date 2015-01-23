// Playground - noun: a place where people can play
class zoolu {
    let zoo:[String:String] = ["giraffe":"grass","horse":"potato","snake":"carrot","ant":"milk"];
    
    let animalupdate:String
    
    init(animal:String){
        self.animalupdate=animal
    }
    
    func update() -> String{
        var ans:String = ""
        for (key,value) in zoo {
            
            
            if(key == animalupdate){
                ans=value
            }
        }
        return ans
    }
    
    
}
let sum = zoolu(animal:"giraffe")
sum.update()
