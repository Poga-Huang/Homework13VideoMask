//
//  ViewController.swift
//  Homework13VideoMask
//
//  Created by 黃柏嘉 on 2021/11/17.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let kidImage = UIImageView(image: UIImage(named: "kid"))
        kidImage.frame.size = CGSize(width: 400, height: 600)
        let videoView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 50), size: kidImage.frame.size))
        view.addSubview(videoView)
        
        
        //網址轉換成URL
        let url = URL(string: "https://movietrailers.apple.com/movies/sony_pictures/spider-man-no-way-home/spider-man-no-way-home-trailer-2_h720p.mov")
        //交給用來播放的AVPlayer
        let player = AVPlayer(url: url!)
        
        //AVPlayerLayer是呈現影片的，僅有AVPlayer會只有聲音
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(origin: .zero, size: kidImage.frame.size)
        playerLayer.videoGravity = .resizeAspectFill
        
        //將playerLayer加到用來我們用來放影片的view中
        videoView.layer.addSublayer(playerLayer)
        videoView.mask = kidImage
        
        //AVPlayer播放
        player.play()
        
        
    }


}

