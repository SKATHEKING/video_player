//
//  ViewController.swift
//  video_player
//
//  Created by Mateus Ouro on 13/09/2023.
//

import UIKit
import AVFoundation
import AVKit



class ViewController: UIViewController {
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
        
        
        
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        playVideo()
    }
        
    
        private func playVideo(){
            
            guard let path = Bundle.main.path(forResource: "appartments_video", ofType:"mp4") else{
                
                debugPrint("video not found")
                    return
            }
            
            let player = AVPlayer(url: URL(fileURLWithPath:  path))
            
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true){
                player.play()
            }
        }
    


}

