//
//  UIRainView.swift
//  Pods
//
//  Created by zaid.pathan on 08/02/17.
//
//

import UIKit

@IBDesignable open class UIRainView: UIView {

    @IBInspectable open var rainString:String = "💧"
    
    //Default = 5
    @IBInspectable open var rainFallInterval:Double = 5
    
    private var rainTimer:Timer?
    
    override open func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //Start raining
    open func rain(){
        rainTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(addRaindrop), userInfo: nil, repeats: true)
    }
    
    //Stop raining
    open func drizzle(){
        rainTimer?.invalidate()
        rainTimer = nil
    }
    
    @objc private func addRaindrop(){
        let rainDrop = UILabel(frame: CGRect(
            x: getRandomFloat(max: self.frame.width),
            y: -70,
            width: 50,
            height: 50))
        rainDrop.text = getRandomChar()
        
        addSubview(rainDrop)
        
        Timer.scheduledTimer(timeInterval: TimeInterval(getRandomFloat(max: 1)), target: self, selector: #selector(fallRaindrop(timer:)), userInfo: rainDrop, repeats: false)
        
    }
    
    func fallRaindrop(timer:Timer){
        if let rainDrop = timer.userInfo as? UILabel{
            UIView.animate(withDuration: rainFallInterval, animations: {
                rainDrop.frame.origin.y = self.frame.height*2
            }) { (completion) in
                rainDrop.removeFromSuperview()
            }
        }
    }
}

//Random work
extension UIRainView{
    //Used to get random character from string to rain
    func getRandomInt(max:Int)->Int{
        return Int(arc4random_uniform(UInt32(max)))
    }
    
    //Used to get frame origin
    func getRandomFloat(max:CGFloat)->CGFloat{
        return CGFloat(arc4random_uniform(UInt32(max)))
    }
    
    //Used to get random char from string
    func getRandomChar()->String{
        let characters:Int = rainString.characters.count
        let randomCharecter:Int = getRandomInt(max: characters)
        let index = rainString.index(rainString.startIndex, offsetBy: randomCharecter)
        return String(rainString[index])
    }
}
