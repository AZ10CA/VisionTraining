//
//  DataController.swift
//  VisionTraining
//
//  Created by Alireza Zahedi on 2022-09-07.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Database")
    
    init(){ container.loadPersistentStores { desc, err in
        if let error = err {
            print("CoreData failed to load: \(error.localizedDescription)")
            
        }
        self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
    }}
    
}
