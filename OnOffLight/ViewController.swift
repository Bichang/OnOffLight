//
//  ViewController.swift
//  OnOffLight
//
//  Created by bee chang on 2018/12/20.
//  Copyright © 2018 bee chang. All rights reserved.
//

import UIKit
enum Button{
    case on
    case off
}
class ViewController: UIViewController {
    
    var button = Button.on
    var onImg = UIImage(named:"onlight.png")
    var offImg = UIImage(named:"offlight.png")
    var imageView: UIImageView = UIImageView()
    
    @IBOutlet weak var switchButton: UIButton!
    
    
    @IBAction func onClick(_ sender: Any) {
        switch button {
        case .on:
            switchButton.setTitle("off",for: .normal)
            button = .off
            imageView.image = onImg
            view.backgroundColor = UIColor.white
        default:
            switchButton.setTitle("on",for: .normal)
            button = .on
            imageView.image = offImg
            view.backgroundColor = UIColor.black
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 全画面幅の広さ
        let screenWidth:CGFloat = view.frame.size.width
        //画面の高さ
        let screenHeight:CGFloat = view.frame.size.height
        // image size
        imageView.frame.size = CGSize(width: 200, height: 200)
        // position
        imageView.center = CGPoint(x:screenWidth/2,y:screenHeight/2)

        view.addSubview(imageView)
    }
    

    
    

}


