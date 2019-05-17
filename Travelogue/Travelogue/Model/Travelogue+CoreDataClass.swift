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

    var travelogueTitle: String?{
        get{
            return travelogueTitle as String?
        }
        set{
            travelogueTitle = newValue as String?
        }
    }
    
    convenience init?(travelogueTitle: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let context = AppDelegate
    }
    
}
