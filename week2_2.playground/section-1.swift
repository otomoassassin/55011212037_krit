// Playground - noun: a place where people can play

func returnPossbleTips() -> [Int: Double] {
    let possibleTipsInferred = [0.15,0.18,0.20]
    let possibleTipsExplict:[Double] = [0.15,0.18,0.20]
    
    var retval = Dictionary<Int,Double>()
    for possibleTip in possibleTipsInferred {
        let intPct = Int(possibleTip*100)
        
        retval[intPct] = calcTipWithTipPct(possibleTip)
    }
    return retval
}
