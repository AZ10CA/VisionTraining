//
//  StatPos+CoreDataProperties.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-14.
//
//

import Foundation
import CoreData


extension StatPos {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StatPos> {
        return NSFetchRequest<StatPos>(entityName: "StatPos")
    }

    @NSManaged public var byEngine: Int32
    @NSManaged public var byUser: Int32
    @NSManaged public var position: String?
    @NSManaged public var board: StatBoard?

}

extension StatPos : Identifiable {

}
