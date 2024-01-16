//
//  StarRatingViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class StarRatingViewController: UIViewController {
    
    enum Rating: CGFloat {
        case empty = 0
        case half = 0.5
        case full = 1.0
    }
    
    @IBOutlet var starOne: UIImageView!
    @IBOutlet var starTwo: UIImageView!
    @IBOutlet var starThree: UIImageView!
    @IBOutlet var starFour: UIImageView!
    @IBOutlet var starFive: UIImageView!
    
    @IBOutlet weak var layerImageView: UIImageView!
    @IBOutlet weak var backgroundView: UIView!
    
    var starViews: [UIImageView] = []
    
    let emptyStar = StarKit.imageOfSingleStar(singleRate: Rating.empty.rawValue)
    let halfStar = StarKit.imageOfSingleStar(singleRate: Rating.half.rawValue)
    let fullStar = StarKit.imageOfSingleStar(singleRate: Rating.full.rawValue)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        backgroundView.layer.cornerRadius = 20
        
        starViews.append(starOne)
        starViews.append(starTwo)
        starViews.append(starThree)
        starViews.append(starFour)
        starViews.append(starFive)
        
        for view in starViews {
            view.image = emptyStar
        }
        
        for star in starViews {
            let touchGesture = UITapGestureRecognizer(target: self, action: #selector(starTapped))
            star.addGestureRecognizer(touchGesture)
        }
        
        layerImageView.image = StarKit.imageOfStarLayer
    }
    
    @objc func starTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        print("Touched me")
        guard let imageView = tapGestureRecognizer.view as? UIImageView else {
            return
        }
        print("Touched image view")
        guard let index = indexOf(imageView) else {
            return
        }
        print("Touched star at \(index)")
        for star in stride(from: starViews.count - 1, to: index, by: -1) {
            starViews[star].image = emptyStar
        }
        for star in 0..<index {
            starViews[star].image = fullStar
        }
        if starViews[index].image == emptyStar {
            starViews[index].image = halfStar
        } else if starViews[index].image == halfStar {
            starViews[index].image = fullStar
        } else {
            starViews[index].image = emptyStar
        }
    }
    
    func indexOf(_ imageView: UIImageView) -> Int? {
        return starViews.firstIndex(of: imageView)
    }
    
}
