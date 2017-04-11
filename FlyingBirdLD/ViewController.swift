//
//  ViewController.swift
//  FlyingBirdLD
//
//  Created by Linh&ShawnD on 2017-04-11.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    
    var bird = UIImageView()
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawJungle()
        addBird()
        flyUpAndDown()
        playSong()
        
    }
    
    func playSong()
    {
        
        let filepath = Bundle.main.path(forResource: "A+ – Chào Mào Mái Hót", ofType: ".mp3")
        let url = URL(fileURLWithPath: filepath!)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
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
        self.bird.center = CGPoint(x: self.view.bounds.size.width - 50, y: self.view.bounds.size.height - 50)
    
    }) { (finished) in
    
    self.bird.transform = self.bird.transform.scaledBy(x: -1, y: 1).concatenating(CGAffineTransform(rotationAngle: 45))

        UIView.animate(withDuration: 4, animations: {
            self.bird.center = CGPoint(x: 0, y: self.view.bounds.size.height - 50)
            
        }) { (finished) in
            
            self.bird.transform = self.bird.transform.scaledBy(x: -1, y: 1).concatenating(CGAffineTransform(rotationAngle: 180))
            
            UIView.animate(withDuration: 4, animations: {
                self.bird.center = CGPoint(x: self.view.bounds.size.width - 50, y: 0)
                
            }) { (finished) in
                
                self.bird.transform = self.bird.transform.scaledBy(x: -1, y: 1).concatenating(CGAffineTransform(rotationAngle: 20))
                
                
                UIView.animate(withDuration: 4, animations: {
                    self.bird.center = CGPoint(x: 0, y: 0)
                    
                }) { (finished) in
                    
                    self.bird.transform = self.bird.transform.scaledBy(x: -1, y: 1).concatenating(CGAffineTransform(rotationAngle: 45))
                    
        
        }
    
 

            }}


    }}}
