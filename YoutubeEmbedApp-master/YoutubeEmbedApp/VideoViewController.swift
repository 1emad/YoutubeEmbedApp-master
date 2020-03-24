//
//  VideoViewController.swift
//  YoutubeEmbedApp
//
//  Created by Emad on 3/18/20.
//  Copyright © 2020 Emad. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    var video:Video = Video()
    
    @IBOutlet weak var videoWebView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        videoTitle.text = video.Title
        getVideo(videoKey: video.Key)
        
        // Do any additional setup after loading the view.
    }
    
    func getVideo(videoKey:String) {
        
        let url = URL(string: "https://www.youtube.com/embed/\(videoKey)")
        videoWebView.loadRequest(URLRequest(url: url!))
        
    }

 

}
