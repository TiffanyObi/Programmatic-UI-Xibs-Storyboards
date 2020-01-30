//
//  PodcastView.swift
//  Programmatic-UI-Xibs-Storyboards
//
//  Created by Alex Paul on 1/29/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class PodcastView: UIView {
    
    public lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 400, height: 400)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemTeal
         return collectionView
    }()

  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
   setupCollectionViewConstraints()
  }
    
    
    private func setupCollectionViewConstraints() {
        addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            collectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}