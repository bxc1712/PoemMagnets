//
//  ViewController.swift
//  PoelarMagnets
//
//  Created by igmstu on 2/7/17.
//  Copyright © 2017 Daniel Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let words = ["could", "cloud", "bot", "bit", "ask", "a", "geek", "flame", "file", "ed", "create", "like", "lap", "is", "ing", "I", "her", "drive", "get", "soft", "screen", "protect", "online", "meme", "to", "they", "that", "tech", "space", "source", "y", "write", "while"]
    
    let words2 = ["earth", "water", "fire", "air"]
    
    let words3 = ["test", "something", "nothing", "new"]
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeWords()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func placeWords(){
        view.backgroundColor = UIColor.orange
        
        var x = CGFloat(0)
        var y = CGFloat(20)
        
        //x position of previous word
        var prevX = CGFloat(0)
        //width of preious word
        var preWidth = CGFloat(0)
        
        for word in words{
            let l = UILabel()
            l.backgroundColor = UIColor.white
            l.text = " " + word + " "
            l.textAlignment = .center
            l.sizeToFit()
            
            //adding up for x val
            x = prevX + preWidth / 2 + l.frame.size.width / 2 + 5
            //setting the new previous width
            preWidth = l.frame.size.width
            
            //checking x bounds
            if(x < 0){
                x = 10
            }
            
            if(x > screenSize.width - l.frame.size.width / 2){
                x = 10 + l.frame.size.width / 2
                y += l.frame.size.height + 10
            }
            
            prevX = x
            
            l.center = CGPoint(x:x, y:y)
            view.addSubview(l)
            
            l.isUserInteractionEnabled = true
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(doPanGesture))
            l.addGestureRecognizer(panGesture)
        }
    }
    
    func doPanGesture(panGesture:UIPanGestureRecognizer){
        let label = panGesture.view as! UILabel
        let position = panGesture.location(in: view)
        label.center = position
    }
}

