//
//  mainView.swift
//  Gantt Street Baptist Church
//
//  Created by GSBC on 9/29/15.
//  Copyright © 2015 GSBC. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

class MainViewController: UIViewController  {
    
    @IBAction func btnButton_Click(sender: AnyObject) {
    }
    @IBAction func btnVIewLatest_Click(sender: AnyObject) {
        playVideo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playVideo(){
        //let urlVideo :NSURL = NSURL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8")!
        
        let urlVideo :NSURL = NSURL(string: "http://stream1.streamatic.com/ganttst.isml/manifest(format=m3u8-aapl).m3u8")!
        
        let player  =  AVPlayer(URL: urlVideo)
        var playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated:true){
            playerViewController.player?.play()
        }
    }
    
    
}

