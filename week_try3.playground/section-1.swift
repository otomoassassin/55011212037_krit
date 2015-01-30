class zoolu {
    let Infinitive:[String:String] = ["awake":"awoke,awoken","be":"was,been","creep":"crept,crept","do":"did,done"];
    let past_Tense:String
    
    init(word:String){
        self.past_Tense=word
    }
    
    func update() -> String{
        var ans:String = ""
        
        for (key,value) in Infinitive {
            
            
            if(key == past_Tense){
                ans=value
             
            }
            
        }
        return ans
    
    }
    
    
}
let sum = zoolu(word:"be")
sum.update()