//
//  OnBoardingPagerVC.swift
//  BazarSimulation
//
//  Created by ahlam on 05/12/2022.
//

import UIKit

class OnBoardingPagerVC: UIPageViewController , UIPageViewControllerDelegate, UIPageViewControllerDataSource
{
   var arrController = [UIViewController]()
   var pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        dataSource = self
        
        if let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "pageOne") {
            arrController.append(vc1)
        }
        if let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "pageTwo") {
            arrController.append(vc2)
        }
        if let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "pageThree") {
            arrController.append(vc3)
        }
        
        
        if let firstVC = arrController.first {
            setViewControllers([firstVC], direction: .forward, animated: true)
        }
        
        addPageControl()
        
    }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            
            guard let currentIndex = arrController.firstIndex(of: viewController) else { return nil}
            
            let previousIndex = currentIndex - 1
            
            guard previousIndex >= 0 else {
               // return nil
                return arrController.last
            }
            return arrController[previousIndex]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            
            guard let currentIndex = arrController.firstIndex(of: viewController) else {return nil}
            let nextIndex = currentIndex + 1
            guard nextIndex < arrController.count else {
                //return nil
                return arrController.first
            }
            return arrController[nextIndex]
        }
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//      return  arrController.count
//    }
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        return 0
//    }
    
    func addPageControl (){
        pageControl = UIPageControl (frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 75, width: UIScreen.main.bounds.width, height: 50))
        
        self.pageControl.numberOfPages = arrController.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.white
        self.pageControl.pageIndicatorTintColor = .gray
        self.view.addSubview(pageControl)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewControllers = pageViewController.viewControllers![0]
        self.pageControl.currentPage = arrController.firstIndex(of: pageContentViewControllers)!
    }
    
        
    }
    

