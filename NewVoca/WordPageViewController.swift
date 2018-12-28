//
//  WordPageViewController.swift
//  NewVoca
//
//  Created by Thao Doan on 12/28/18.
//  Copyright © 2018 Thao Doan. All rights reserved.
//

import UIKit

class WordPageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        // show test view controller
        let viewController = UIViewController(nibName: nil, bundle: nil)
        viewController.view.backgroundColor = .blue
        setViewControllers([viewController], direction: .forward, animated: false)
    }

}

extension WordPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let viewController = UIViewController(nibName: nil, bundle: nil)
        viewController.view.backgroundColor = .blue
        return viewController // show test view controller
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let viewController = UIViewController(nibName: nil, bundle: nil)
        viewController.view.backgroundColor = .red
        return viewController // show test view controller
    }
    
    
}

