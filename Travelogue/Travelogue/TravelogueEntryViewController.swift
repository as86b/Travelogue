//
//  TravelogueEntryViewController.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/15/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//

import UIKit

class TravelogueEntryViewController: UIViewController {

    
    @IBOutlet weak var entryTitle: UILabel!
    
    @IBOutlet weak var entryDate: UITextField!
    
    @IBOutlet weak var entryContent: UITextField!
    
    @IBOutlet weak var entryImage: UIImageView!
    
    var dateFormatter = DateFormatter()
    
    var entries = [Entry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .long
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        fetch the entries
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveEntry(_ sender: Any) {
//        Needs to be disabled if no changes have been made to an entry
    }
    

}
