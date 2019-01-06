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
        
        let viewController = WordViewController(nibName: "WordViewController", bundle: nil)
        viewController.view.backgroundColor = #colorLiteral(red: 0.4470588235, green: 0.8549019608, blue: 0.7803921569, alpha: 1)
        setViewControllers([viewController], direction: .forward, animated: false)
  }
    
}

extension WordPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        let viewController = WordViewController(nibName: "WordViewController", bundle: nil)
        viewController.view.backgroundColor = #colorLiteral(red: 0.4470588235, green: 0.8549019608, blue: 0.7803921569, alpha: 1)
        return viewController 
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let viewController = WordViewController(nibName: "WordViewController", bundle: nil)
        viewController.view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        return viewController 
    }


}

