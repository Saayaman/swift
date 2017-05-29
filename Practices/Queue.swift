//
//  Queue.swift
//  DSALG
//
//  Created by Derrick Park on 2017-05-06.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import Foundation

public struct Queue<T> {
    
    fileprivate var array = Array<T>()
    
//    isEmpty, count, enqueue, dequeue, front
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        return array.removeFirst()
    }
    
    public var front: T? {
        return array.first
    }
    
    
}
