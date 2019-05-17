//
//  TraveloguesViewController.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/15/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//

import UIKit
import CoreData

class TraveloguesViewController: UIViewController {
    
    @IBOutlet weak var traveloguesTableView: UITableView!
    
    var travelogues: [Travelogue] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest: NSFetchRequest<Trip> = Trip.fetchRequest()
        
        traveloguesTableView.reloadData()
        
        do {
            try managedContext.fetch(fetchRequest)
        } catch {
            print("Could not fetch")
        }
    }
    

    
}

extension TraveloguesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return travelogues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = traveloguesTableView.dequeueReusableCell(withIdentifier: t"ravelogueCell", for: indexPath)
        
        let travelogue = travelogues[indexPath.row]

        //set text of cell
        
        return cell
    }
}
