//
//  PositionStat+CoreDataProperties.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-17.
//
//

import Foundation
import CoreData


extension PositionStat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PositionStat> {
        return NSFetchRequest<PositionStat>(entityName: "PositionStat")
    }

    @NSManaged public var posStr: String?
    @NSManaged public var byEngine: Int32
    @NSManaged public var byUser: Int32
    @NSManaged public var board: BoardStat?

}

extension PositionStat : Identifiable {

}
