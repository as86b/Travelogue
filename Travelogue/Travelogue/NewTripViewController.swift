//
//  NewTripViewController.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/15/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//

import UIKit

class NewTripViewController: UIViewController {

    
    @IBOutlet weak var newTripTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveTrip(_ sender: Any) {
        
        let trip = Trip(tripTitle: newTripTitle.text ?? "")
        
        do {
            try trip?.managedObjectContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        } catch {
            print("Could not save new trip")
        }
    }
    
   

}
