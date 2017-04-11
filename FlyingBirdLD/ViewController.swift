//
//  ViewController.swift
//  FlyingBirdLD
//
//  Created by Linh&ShawnD on 2017-04-11.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bird = UIImageView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawJungle()
        addBird()
        flyUpAndDown()
//        playSong()
        
        
    }

  func drawJungle()
  {
    let background = UIImageView(image: UIImage(named: "jungle.jpg"))
    background.frame = self.view.bounds
    background.contentMode = .scaleAspectFill
    self.view.addSubview(background)
    }
    
 func addBird()
 {
    bird = UIImageView(frame: CGRect(x: 0,y: 0,width: 110,height: 68))
    bird.animationImages = [UIImage(named:"bird0.png")!, UIImage(named:"bird1.png")!, UIImage(named:"bird2.png")!, UIImage(named:"bird3.png")!, UIImage(named:"bird4.png")!, UIImage(named:"bird5.png")!]
    bird.animationRepeatCount = 0
    bird.animationDuration = 1
    bird.startAnimating()
    self.view.addSubview(bird)
    }
    
  func flyUpAndDown()
  {
    UIView.animate(withDuration: 4, animations: {
        self.bird.center = CGPoint(x: self.view.bounds.size.width, y: self.view.bounds.size.height)
    
    
    
    }) { (finished) in
    
    

}

}





































}
