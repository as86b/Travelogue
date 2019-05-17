//
//  Travelogue+CoreDataProperties.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/17/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//
//

import Foundation
import CoreData


extension Travelogue {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Travelogue> {
        return NSFetchRequest<Travelogue>(entityName: "Travelogue")
    }

    @NSManaged public var traveloguetitle: String?
    @NSManaged public var rawEntries: NSOrderedSet?
    @NSManaged public var trip: Trip?

}

// MARK: Generated accessors for rawEntries
extension Travelogue {

    @objc(insertObject:inRawEntriesAtIndex:)
    @NSManaged public func insertIntoRawEntries(_ value: Entry, at idx: Int)

    @objc(removeObjectFromRawEntriesAtIndex:)
    @NSManaged public func removeFromRawEntries(at idx: Int)

    @objc(insertRawEntries:atIndexes:)
    @NSManaged public func insertIntoRawEntries(_ values: [Entry], at indexes: NSIndexSet)

    @objc(removeRawEntriesAtIndexes:)
    @NSManaged public func removeFromRawEntries(at indexes: NSIndexSet)

    @objc(replaceObjectInRawEntriesAtIndex:withObject:)
    @NSManaged public func replaceRawEntries(at idx: Int, with value: Entry)

    @objc(replaceRawEntriesAtIndexes:withRawEntries:)
    @NSManaged public func replaceRawEntries(at indexes: NSIndexSet, with values: [Entry])

    @objc(addRawEntriesObject:)
    @NSManaged public func addToRawEntries(_ value: Entry)

    @objc(removeRawEntriesObject:)
    @NSManaged public func removeFromRawEntries(_ value: Entry)

    @objc(addRawEntries:)
    @NSManaged public func addToRawEntries(_ values: NSOrderedSet)

    @objc(removeRawEntries:)
    @NSManaged public func removeFromRawEntries(_ values: NSOrderedSet)

}
