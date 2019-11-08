//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
    func testFetchThreads() {
        
        let messageThreadController = MessageThreadController()
        
        XCTAssertEqual(messageThreadController.messageThreads, [])
        
        let promise = expectation(description: "Data fetched")
        
        messageThreadController.fetchMessageThreads {
            XCTAssertNotEqual(messageThreadController.messageThreads, [])
            promise.fulfill()
        }
        
        wait(for: [promise], timeout: 5)
    }
    
}
