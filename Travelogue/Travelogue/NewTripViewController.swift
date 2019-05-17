//
//  NewTripViewController.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/15/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//

import UIKit

class NewTripViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func newTrip(_ sender: Any) {
        
        //need to make another outlet for this
        let trip = Trip(tripTitle: tripTitle.text ?? "") {
            
        }
        
    }
    

   

}
