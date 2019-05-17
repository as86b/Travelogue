//
//  Trip+CoreDataClass.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/17/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Trip)
public class Trip: NSManagedObject {
    
    //maybe have to convert from ns type?
//    var travelogues: [rawTravelogues]?{
//        return self.rawTravelogues?.array as? [ <#type#>]
//    }
 
    convenience init?(tripTitle: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else{
                return nil
        }
        
        //intializing instance.
        //entity is something that pops up but not sure exactly what that is
        self.init(entity: Trip.entity(), insertInto: context)
        
        self.tripTitle = tripTitle
        
    }
    
}
