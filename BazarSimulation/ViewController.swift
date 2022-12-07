//
//  ViewController.swift
//  BazarSimulation
//
//  Created by ahlam on 03/12/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLocation: UILabel!
    @IBOutlet weak var btnContniue: UIButton!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtLocation.text = "Label Label Labe Label Label Label Label Labell Label Label Labe Label \n LabelLabel end text"
        
        btnContniue.layer.cornerRadius = 8
        
    }


}

