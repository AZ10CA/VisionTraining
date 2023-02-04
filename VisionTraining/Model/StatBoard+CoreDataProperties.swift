//
//  StatBoard+CoreDataProperties.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-14.
//
//

import Foundation
import CoreData


extension StatBoard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StatBoard> {
        return NSFetchRequest<StatBoard>(entityName: "StatBoard")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var positions: NSSet?

}

// MARK: Generated accessors for positions
extension StatBoard {

    @objc(addPositionsObject:)
    @NSManaged public func addToPositions(_ value: StatPos)

    @objc(removePositionsObject:)
    @NSManaged public func removeFromPositions(_ value: StatPos)

    @objc(addPositions:)
    @NSManaged public func addToPositions(_ values: NSSet)

    @objc(removePositions:)
    @NSManaged public func removeFromPositions(_ values: NSSet)

}

extension StatBoard : Identifiable {

}
