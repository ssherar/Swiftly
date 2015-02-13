//
//  ListTest.swift
//  Swiftly
//
//  Created by Sam Sherar on 13/02/2015.
//  Copyright (c) 2015 Sam Sherar. All rights reserved.
//

import Foundation
import XCTest
import Swiftly

class ListTest: XCTestCase {
    
    var data : List<String>!

    override func setUp() {
        super.setUp()
        self.data = List<String>()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStackEmpty() {
        XCTAssert(self.data.isEmpty, "Data structure is not empty")
    }
    
    func testStackPush() {
        XCTAssert(self.data.isEmpty, "Data structure is not empty")
        self.data.push("Item 1")
        XCTAssert(self.data.isEmpty == false, "Data structure is empty")
        XCTAssert(self.data.count == 1, "Data structure doesn't contain 1 item")
    }
    
    func testStackPeak() {
        self.data.push("Item 1")
        XCTAssert(self.data.peak() == "Item 1", "Top of stack doens't equal 'Item 1'")
        XCTAssert(self.data.count == 1, "Item was removed by using peak")
    }
    
    func testStackPop() {
        self.data.push("Item 1")
        self.data.push("Item 2")
        XCTAssert(self.data.pop() == "Item 2", "Top of stack doesn't equal 'Item 2")
        XCTAssert(self.data.pop() == "Item 1", "Top of stack doesn't equal 'Item 1")
        XCTAssert(self.data.count == 0, "Item wasn't removed by using pop")
    }
    
    func testEnqueue() {
        self.data.enqueue("Item 1")
        XCTAssert(self.data.count == 1, "Enqueue didn't add item at the end of the queue")
        XCTAssert(self.data.isEmpty == false, "Enqueue didn't add element")
    }
    
    func testDequeue() {
        self.data.enqueue("Item 1")
        self.data.enqueue("Item 2")
        XCTAssert(self.data.dequeue() == "Item 1", "Front of queue doesn't equal 'Item 1'")
        XCTAssert(self.data.dequeue() == "Item 2", "Front of queue doesn't equal 'Item 2'")
        XCTAssert(self.data.isEmpty, "Queue isn't empty")
    }

}
