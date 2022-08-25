//
//  ViewController.swift
//  CatGame
//
//  Created by rolll on 16.08.22.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var roundButton: UIButton!
    
    var xPosition = 0.0
    var yPosition = 0.0
    
    var countOfTaps = 0
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let buttonSize = view.frame.maxX/4
        xPosition = view.center.x-buttonSize/2
        yPosition = view.center.y-buttonSize/2
        
        roundButton.frame = CGRect(x: xPosition, y: yPosition, width: buttonSize, height: buttonSize)
        roundButton.backgroundColor = randomColor()
        roundButton.layer.cornerRadius = roundButton.frame.width/2

    }
       
    @IBAction func buttonTap(_ sender: UIButton!) {
        
        roundButton.backgroundColor = randomColor()
        roundButton.frame.origin.x = changePosition().x
        roundButton.frame.origin.y = changePosition().y
        view.backgroundColor = randomColor()
        countOfTaps+=1
    }
    
    func randomColor() -> UIColor {
        let redColor = CGFloat.random(in: 0...1)
        let greenColor = CGFloat.random(in: 0...1)
        let blueColor = CGFloat.random(in: 0...1)
        return UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
    func changePosition() -> (x: CGFloat, y: CGFloat){
        xPosition = CGFloat.random(in: view.frame.minX+20.0...view.frame.maxX-20-roundButton.frame.width)
        yPosition = CGFloat.random(in: view.frame.minY+20.0...view.frame.maxY-20-roundButton.frame.height)
        return (xPosition, yPosition)
    }
    
}


