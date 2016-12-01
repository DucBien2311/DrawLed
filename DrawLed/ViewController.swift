//
//  ViewController.swift
//  DrawLed
//
//  Created by NguyenDucBien on 11/22/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tf_numberball: UITextField!
    



    var _marginRow: CGFloat = 50
    var _marginColumn: CGFloat = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func btn_draw(sender: AnyObject) {
        
        
        for subview in view.subviews {
            if ((subview as? UIImageView) != nil){
                
            
            subview.removeFromSuperview()
            }
        }
            drawRowBall()
        
        
        }
    
    

    func drawRowBall(){
        let n = Int(tf_numberball.text!)!
        
        for indexRow in 0..<n{
            for indexCollumn in 0..<n{
                let picture = UIImage(named: "green")
                let ball = UIImageView(image: picture)
                ball.center = CGPointMake(_marginRow + CGFloat(indexRow) * spaceBetweenBallWidth(), CGFloat(indexCollumn)*spaceBetweenBallHeight() + _marginColumn)
                self.view.addSubview(ball)

            }
        }
    }

    func spaceBetweenBallWidth() -> CGFloat {
        let n = Int(tf_numberball.text!)!
        
        let spaceRow = (self.view.bounds.size.width - 2 * _marginRow)/CGFloat(n-1)
        return spaceRow
        
    }
    
    func spaceBetweenBallHeight() -> CGFloat {
        let n = Int(tf_numberball.text!)!
        let spaceColumn = (self.view.bounds.size.height - 2 * _marginColumn)/CGFloat(n-1)
        return spaceColumn
    }

}




