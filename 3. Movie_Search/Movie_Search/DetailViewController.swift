//
//  DetailViewController.swift
//  Movie_Search
//
//  Created by mgpark on 2021/08/10.
//

import UIKit
import AVKit

class DetailViewController: UIViewController {
    
    var movieResult: MovieResult?{
        didSet{
        }
    }
    
    var player: AVPlayer?
    
    @IBOutlet weak var movieContainer: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!{
        didSet{
            titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.font = .systemFont(ofSize: 16, weight: .light)
        }
    }
    
//    viewcontroller lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()//fast access

        titleLabel.text = movieResult?.trackName
        descriptionLabel.text = movieResult?.longDescription
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let hasUrl = movieResult?.previewUrl{
            makePlayerAndPlay(urlString: hasUrl)
        }
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        <#code#>
//    }
    
    func makePlayerAndPlay(urlString: String){
        if let hasUrl = URL(string: urlString){
            self.player = AVPlayer(url: hasUrl)
            let playerLayer = AVPlayerLayer(player: player)
            
            movieContainer.layer.addSublayer(playerLayer)
            playerLayer.frame = movieContainer.bounds
            
            self.player?.play()
        }
    }
    
    @IBAction func play(_ sender: Any) {
        self.player?.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        self.player?.pause()
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}


