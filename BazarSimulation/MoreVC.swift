//
//  MoreVC.swift
//  BazarSimulation
//
//  Created by ahlam on 04/12/2022.
//

import UIKit

class MoreVC: UIViewController {

    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var btnJoinAsSeller: UIButton!
    @IBOutlet weak var btnJoinAsDelivery: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnJoinAsDelivery.layer.borderColor =  UIColor.blue.cgColor
        btnJoinAsDelivery.layer.borderWidth = CGFloat(1)
        btnJoinAsDelivery.layer.cornerRadius = 8
        btnJoinAsSeller.layer.cornerRadius = 8
        
        txtName.underline()

    }
    

 

}
