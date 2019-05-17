//
//  Entry+CoreDataProperties.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/17/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var entryTitle: String?
    @NSManaged public var entryDate: NSDate?
    @NSManaged public var entryContent: String?
    @NSManaged public var entryImage: NSData?
    @NSManaged public var travelogue: Travelogue?

}
