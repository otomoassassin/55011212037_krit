// Playground - noun: a place where people can play
class frrstye {
    let Single:[String] = ["Taylor swift","Maroon5","Scorpion","Aerosmith"];
    let song:[String]=["Blank Space","One More Night","Holiday","I Don't Want to Miss a Thing"]
    
    let songupdate:String
    
    init(yoursingle:String){
        self.songupdate=yoursingle
    }
    
    func update() -> String{
        var ans:String = ""
        for (var i=0; i<Single.count;i++){
            
            
            if(Single[i] == songupdate ){
                ans=song[i]
                break
            }
            else if(Single[i] != songupdate ){
                ans="\(songupdate) is not choice"
                
            }

        }
        return ans
    }
    
    
}
let sum = frrstye(yoursingle:"maroon5")
sum.update()
