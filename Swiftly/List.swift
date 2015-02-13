//
//  List.swift
//  Swiftly
//
//  Created by Sam Sherar on 13/02/2015.
//  Copyright (c) 2015 Sam Sherar. All rights reserved.
//

import Foundation

public class List<T> {
    private var data : [T]
    
    public var isEmpty : Bool {
        return self.data.isEmpty
    }
    
    public var count : Int {
        return self.data.count
    }
    
    init() {
        self.data = [T]()
    }
    
    public func push(element: T) {
        self.data.append(element)
    }
    
    public func peak() -> T? {
        if self.isEmpty {
            return nil
        }
        return self.data[self.count - 1]
    }
    
    public func pop() -> T? {
        if self.isEmpty {
            return nil
        }
        return self.data.removeLast()
    }
    
    public func enqueue(element: T) {
        self.push(element)
    }
    
    public func dequeue() -> T? {
        if self.isEmpty {
            return nil
        }
        return self.data.removeAtIndex(0)
    }
    
    
}
