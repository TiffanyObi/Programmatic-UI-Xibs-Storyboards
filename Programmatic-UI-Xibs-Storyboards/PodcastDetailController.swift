//
//  PodcastDetailController.swift
//  Programmatic-UI-Xibs-Storyboards
//
//  Created by Tiffany Obi on 1/29/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import  ImageKit

class PodcastDetailController: UIViewController {
    
    
    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    var podcast: Podcast?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    private func updateUI() {
        guard let podcast = podcast else {
            fatalError(" oculd not load podcast fgrom segue")
        }
        
        artistNameLabel.text = podcast.artistName
        podcastImageView.getImage(with: podcast.artworkUrl600) { [weak self ](result) in
            switch result {
                
            case .failure:
                
                DispatchQueue.main.async {
                    self?.podcastImageView.image = UIImage(named: "circle")
                }
            case.success(let image):
                
                DispatchQueue.main.async {
                    self?.podcastImageView.image = image
                }
            }
        }
    }
   

}
