//
//  Travelogue+CoreDataClass.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/17/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Travelogue)
public class Travelogue: NSManagedObject {
    
    convenience init?(travelogueTitle: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Travelogue.entity(), insertInto: context)
        
        self.travelogueTitle = travelogueTitle
        
    }
    
}
