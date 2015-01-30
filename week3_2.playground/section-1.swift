// Playground - noun: a place where people can play
class foodgroup5 {
    let mainfood:[String:String] = ["1":"Meat, eggs, milk, nuts","2":"Taro,rice,flour","3":"mineral,ore","4":"vitamin A,vitamin B,vitamin C,vitamin D,vitamin E,","5":"Fat"];
    
    let food:String
    
    init(choice:String){
        self.food=choice
    }
    
    func update() -> String{
        var ans:String = ""
        for (key,value) in mainfood {
            
            if(key == food){
                ans=value
                break
            }
            
           else if (key != food ){
                
                ans="\(food) is No choice"
            }
          
        }
        return ans
        
    }
    
    
}
let sum = foodgroup5(choice:"2")
sum.update()
