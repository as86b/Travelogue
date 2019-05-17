//
//  Trip+CoreDataProperties.swift
//  Travelogue
//
//  Created by Austin Sizemore on 5/17/19.
//  Copyright © 2019 Austin Sizemore. All rights reserved.
//
//

import Foundation
import CoreData


extension Trip {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trip> {
        return NSFetchRequest<Trip>(entityName: "Trip")
    }

    @NSManaged public var tripTitle: String?
    @NSManaged public var rawTravelogues: NSOrderedSet?

}

// MARK: Generated accessors for rawTravelogues
extension Trip {

    @objc(insertObject:inRawTraveloguesAtIndex:)
    @NSManaged public func insertIntoRawTravelogues(_ value: Travelogue, at idx: Int)

    @objc(removeObjectFromRawTraveloguesAtIndex:)
    @NSManaged public func removeFromRawTravelogues(at idx: Int)

    @objc(insertRawTravelogues:atIndexes:)
    @NSManaged public func insertIntoRawTravelogues(_ values: [Travelogue], at indexes: NSIndexSet)

    @objc(removeRawTraveloguesAtIndexes:)
    @NSManaged public func removeFromRawTravelogues(at indexes: NSIndexSet)

    @objc(replaceObjectInRawTraveloguesAtIndex:withObject:)
    @NSManaged public func replaceRawTravelogues(at idx: Int, with value: Travelogue)

    @objc(replaceRawTraveloguesAtIndexes:withRawTravelogues:)
    @NSManaged public func replaceRawTravelogues(at indexes: NSIndexSet, with values: [Travelogue])

    @objc(addRawTraveloguesObject:)
    @NSManaged public func addToRawTravelogues(_ value: Travelogue)

    @objc(removeRawTraveloguesObject:)
    @NSManaged public func removeFromRawTravelogues(_ value: Travelogue)

    @objc(addRawTravelogues:)
    @NSManaged public func addToRawTravelogues(_ values: NSOrderedSet)

    @objc(removeRawTravelogues:)
    @NSManaged public func removeFromRawTravelogues(_ values: NSOrderedSet)

}
