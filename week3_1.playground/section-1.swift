// Playground - noun: a place where people can play

class calculater {
    
    func a(num1:Double,num2:Double)->Double{//บวก
         var sum=num1+num2
        return sum
    }

    func b(num1:Double,num2:Double)->Double{//ลบ
        var sum=num1-num2
        return sum
    }
    func c(num1:Double,num2:Double)->Double{//คูณ
        var sum=num1*num2
        return sum
    }
    func d(num1:Double,num2:Double)->Double{//หาร
        var sum=num1/num2
        return sum
    }
    func e(num1:Double,num2:Double)->Double{//MOD
        var sum=num1%num2
        return sum
    }
    func f(num1:Int,num2:Int)->Int{//ยกกำลัง
        var sum:Int=1
        for(var i=1;i<=num2;i++){
             sum=sum*num1
            
        }
        return sum
    }
}

let ans = calculater()
ans.a(1.0, num2: 2.0)
ans.b(1.0, num2: 3.0)
ans.c(3, num2: 4)
ans.d(10, num2: 2)
ans.e(10, num2: 3)
ans.f(3, num2:3 )



