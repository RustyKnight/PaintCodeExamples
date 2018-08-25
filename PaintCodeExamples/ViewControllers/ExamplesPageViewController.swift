//
//  ExamplesPageViewController.swift
//  PaintCodeExamples
//
//  Created by Shane Whitehead on 25/8/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class ExamplesPageViewController: UIPageViewController {
	
	private(set) lazy var pages: [UIViewController] = [
		loadViewController(withIdentifier: "StarRating"),
		loadViewController(withIdentifier: "StatusBarIcons"),
		loadViewController(withIdentifier: "LogoLoader"),
		loadViewController(withIdentifier: "MultiPartImages")
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		dataSource = self
		guard let first = pages.first else {
			return
		}
		setViewControllers([first], direction: .forward, animated: true, completion: nil)
		
		providesPresentationContextTransitionStyle = true
		definesPresentationContext = true
	}
	
	private func loadViewController(withIdentifier identifier: String) -> UIViewController {
		return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
	}
	
}

extension ExamplesPageViewController: UIPageViewControllerDataSource {
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		guard let currentIndex = pages.firstIndex(of: viewController) else {
			return nil
		}
		let previousIndex = currentIndex - 1
		guard previousIndex >= 0, pages.count > previousIndex else {
			return nil
		}
		
		return pages[previousIndex]
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		guard let currentIndex = pages.firstIndex(of: viewController) else {
			return nil
		}
		let nextIndex = currentIndex + 1
		guard nextIndex < pages.count else {
			return nil
		}
		
		return pages[nextIndex]
	}
	
	func presentationCount(for pageViewController: UIPageViewController) -> Int {
		return pages.count
	}
	
	func presentationIndex(for pageViewController: UIPageViewController) -> Int {
		guard let first = viewControllers?.first, let index = pages.firstIndex(of: first) else {
			return 0
		}
		return index
	}
	
}
