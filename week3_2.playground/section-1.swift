class userpassword {
    var user:[String:String] = ["1":"Meat, eggs, milk, nuts","2":"Taro,rice,flour","3":"mineral,ore","4":"vitamin A,vitamin B,vitamin C,vitamin D,vitamin E,","5":"Fat"]
    var you:String
    
    
    init(word:String){
        self.you=word
    }
    
    func update() -> String{
        var ans:String = ""
        
        for (key,value) in user {
            
            
            if(key == you){
                ans=value
                
            }
            
        }
        return ans
        
    }
    
    func add(useradd:String,pass:String){
        user[useradd]=pass
        println("add \(useradd) and password is \(pass)")
        
    }
    
    func edit(useredit:String,pass:String){
        user[useredit]=pass
        println("edit \(user) ---> \(useredit) and password is \(pass)")
        
    }
    
    func del(userdel:String){
        user[userdel]=nil
        println("delete \(userdel) is Complete")
    }
    
}
let sum = userpassword(word:"1")
sum.add("6 " , pass:"vagetable")
sum.edit("2", pass: "potato,tomato")
sum.del("2")







