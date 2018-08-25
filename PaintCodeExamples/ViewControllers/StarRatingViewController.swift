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
  
  var starViews: [UIImageView] = []
  
  let emptyStar = StarKit.imageOfSingleStar(singleRate: Rating.empty.rawValue)
  let halfStar = StarKit.imageOfSingleStar(singleRate: Rating.half.rawValue)
  let fullStar = StarKit.imageOfSingleStar(singleRate: Rating.full.rawValue)
  
  var touchGesture: UITapGestureRecognizer!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    starViews.append(starOne)
    starViews.append(starTwo)
    starViews.append(starThree)
    starViews.append(starFour)
    starViews.append(starFive)
    
    for view in starViews {
      view.image = emptyStar
    }
    
    touchGesture = UITapGestureRecognizer(target: self, action: #selector(starTapped))
  }
  
  @objc func starTapped(tapGestureRecognizer: UITapGestureRecognizer) {
    guard let imageView = tapGestureRecognizer.view as? UIImageView else {
      return
    }
    guard let index = indexOf(imageView) else {
      return
    }
    for star in stride(from: starViews.count - 1, to: index, by: -1) {
      starViews[star].image = emptyStar
    }
    for star in 0..<index {
      starViews[star].image = emptyStar
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
