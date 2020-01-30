//
//  PodcastCell.swift
//  Programmatic-UI-Xibs-Storyboards
//
//  Created by Tiffany Obi on 1/29/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import ImageKit

class PodcastCell: UICollectionViewCell {
    
    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var podcastCollectionNameLabel: UILabel!
    
    func configureCell(podcast: Podcast) {
        podcastCollectionNameLabel.text = podcast.collectionName
        podcastImageView.getImage(with: podcast.artworkUrl600) { [weak self] (result) in
            switch result {
            case .failure:
                
                DispatchQueue.main.async {
                    self?.podcastImageView.image = UIImage(named: "circle")
                }
                
            case .success(let image):
                DispatchQueue.main.async {
                    self?.podcastImageView.image = image
                }
            }
        }
    }
}
