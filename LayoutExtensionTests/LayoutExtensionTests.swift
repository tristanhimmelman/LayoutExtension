//
//  LayoutExtensionTests.swift
//  LayoutExtensionTests
//
//  Created by Tristan Himmelman on 2015-05-02.
//  Copyright (c) 2015 Tristan Himmelman. All rights reserved.
//

import UIKit
import XCTest
import LayoutExtension

class LayoutExtensionTests: XCTestCase {
	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCGRectTop() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(0, 0, 0, 0)
		frame.top = value
        XCTAssert(frame.origin.y == value, "Pass")
    }
	
	func testCGRectBottom() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(0, 0, 0, 0)
		frame.bottom = value
		XCTAssert(frame.origin.y + frame.size.height == value, "Pass")
	}
	
	func testCGRectLeft() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(0, 0, 0, 0)
		frame.left = value
		XCTAssert(frame.origin.x == value, "Pass")
	}
	
	func testCGRectRight() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(0, 0, 0, 0)
		frame.right = value
		XCTAssert(frame.origin.x + frame.size.width == value, "Pass")
	}
	
	// MARK: UIView
	
	func testUIViewTop() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.top = value
		XCTAssert(view.top == value, "Pass")
	}
	
	func testUIViewLeft() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.left = value
		XCTAssert(view.frame.origin.x == value, "Pass")
	}
	
	func testUIViewBottom() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		XCTAssert(view.bottom == 20, "Pass")
	}
	
	func testUIViewRight() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		XCTAssert(view.right == 20, "Pass")
	}
	
	func testUIViewX() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.x = value
		XCTAssert(view.frame.origin.x == value, "Pass")
	}

	func testUIViewY() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.y = value
		XCTAssert(view.frame.origin.y == value, "Pass")
	}
	
	func testUIViewWidth() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.width = value
		XCTAssert(view.frame.size.width == value, "Pass")
	}

	func testUIViewHeight() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.height = value
		XCTAssert(view.frame.size.height == value, "Pass")
	}
	
	func testUIViewCenterX() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.centerX = value
		XCTAssert(view.frame.origin.x + view.frame.size.width / 2 == value, "Pass")
	}
	
	func testUIViewCenterY() {
		let value: CGFloat = 100
		
		var frame = CGRectMake(10, 10, 10, 10)
		let view = UIView(frame: frame)
		view.centerY = value
		XCTAssert(view.frame.origin.y + view.frame.size.height / 2 == value, "Pass")
	}
	
}
