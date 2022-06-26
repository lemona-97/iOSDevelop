//
//  ViewController.swift
//  LabelControl
//
//  Created by 임우섭 on 2021/08/10.
//

import UIKit

var num = ["1", "2", "3", "4", "5", "6"]
class ViewController: UIViewController {

    @IBOutlet var numView: UILabel!
    @IBOutlet var pageView: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageView.numberOfPages = num.count
        
        pageView.currentPage = 0
        
        pageView.pageIndicatorTintColor = UIColor.green
        
        pageView.currentPageIndicatorTintColor = UIColor.red
        
        numView.text = num[0]
    }


    @IBAction func numControl(_ sender: UIPageControl) {
        numView.text = num[pageView.currentPage]
    }
}

