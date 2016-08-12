//
//  ViewController.swift
//  imageView_animation
//
//  Created by 李扬 on 16/8/12.
//  Copyright © 2016年 李扬. All rights reserved.
//

import UIKit
import Dispatch
class ViewController: UIViewController {

    @IBOutlet weak var animatImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animatImageView.image = UIImage.init(named: "chat_receiver_audio_playing002")
        animatImageView.animationImages = [UIImage.init(named: "chat_receiver_audio_playing002")!,UIImage.init(named: "chat_receiver_audio_playing_full")!]
        animatImageView.animationDuration = 0.5
        animatImageView.animationRepeatCount = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(sender: AnyObject) {
        dispatch_after(1, dispatch_get_main_queue()) {
            self.animatImageView.startAnimating()
        }
    }

    @IBAction func stop(sender: AnyObject) {
        animatImageView.stopAnimating()
    }
}

