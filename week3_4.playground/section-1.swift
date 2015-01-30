class userpassword {
    var user:[String:String] = ["jakkrit":"1234"]
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
let sum = userpassword(word:"jakkrit")
sum.add("jakkrit" , pass:"o55011")
sum.edit("otome", pass: "o123456")
sum.del("jakkrit")







