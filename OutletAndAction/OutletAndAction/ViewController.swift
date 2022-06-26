//
//  ViewController.swift
//  OutletAndAction
//
//  Created by 임우섭 on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lbl: UILabel!
  
    
    @IBAction func test(_ sender: Any) {
    }
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        btn.backgroundColor = UIColor.red
    }


}

