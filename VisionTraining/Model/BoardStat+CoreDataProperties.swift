//
//  BoardStat+CoreDataProperties.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-17.
//
//

import Foundation
import CoreData


extension BoardStat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BoardStat> {
        return NSFetchRequest<BoardStat>(entityName: "BoardStat")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var positions: NSSet?

}

// MARK: Generated accessors for positions
extension BoardStat {

    @objc(addPositionsObject:)
    @NSManaged public func addToPositions(_ value: PositionStat)

    @objc(removePositionsObject:)
    @NSManaged public func removeFromPositions(_ value: PositionStat)

    @objc(addPositions:)
    @NSManaged public func addToPositions(_ values: NSSet)

    @objc(removePositions:)
    @NSManaged public func removeFromPositions(_ values: NSSet)

}

extension BoardStat : Identifiable {

}
