//
//  USScrollView+Layout.swift
//  HearstTV
//
//  Created by Tristan Himmelman on 2014-11-19.
//  Copyright (c) 2014 Hearst. All rights reserved.
//

import UIKit

extension CGRect {
	
	/// The top coordinate of the rect.
	public var top: CGFloat {
		get {
			return origin.y
		}
		set (value) {
			origin.y = value
		}
	}
	
	// The left-side coordinate of the rect.
	public var left: CGFloat {
		get {
			return origin.x
		}
		set (value) {
			origin.x = value
		}
	}
	
	// The bottom coordinate of the rect. Setting this will change origin.y of the rect according to
	// the height of the rect.
	public var bottom: CGFloat {
		get {
			return origin.y + size.height
		}
		set (value) {
			origin.y = value - size.height
		}
	}
	
	// The right-side coordinate of the rect. Setting this will change origin.x of the rect according to
	// the width of the rect.
	public var right: CGFloat {
		get {
			return origin.x + size.width
		}
		set (value) {
			origin.x = value - size.width
		}
	}
	
	// The width of the rect.
	public var width: CGFloat {
		get {
			return size.width
		}
		set (value) {
			size.width = value
		}
	}
	
	// The height of the rect.
	public var height: CGFloat {
		get {
			return size.height
		}
		set (value) {
			size.height = value
		}
	}
	
	// The center x coordinate of the rect.
	public var centerX: CGFloat {
		get {
			return origin.x + size.width / 2
		}
		set (value) {
			origin.x = value - size.width / 2
		}
	}
	
	// The center y coordinate of the rect.
	public var centerY: CGFloat {
		get {
			return origin.y + size.height / 2
		}
		set (value) {
			origin.y = value - size.height / 2
		}
	}
	
	// The center of the rect.
	public var center: CGPoint {
		get {
			return CGPoint(x: centerX, y: centerY)
		}
		set (value) {
			centerX = value.x
			centerY = value.y
		}
	}
}

extension UIView {
	
	/// X coordinate
	public var x: CGFloat {
		get {
			return frame.origin.x
		}
		set (value) {
			var frame = self.frame
			frame.origin.x = value
			self.frame = frame
		}
	}
	
	/// Y coordinate
	public var y: CGFloat {
		get {
			return frame.origin.y
		}
		set (value) {
			var frame = self.frame
			frame.origin.y = value
			self.frame = frame
		}
	}
	
	/// Top coordinate
	public var top: CGFloat {
		get {
			return frame.top
		}
		set (value) {
			var frame = self.frame
			frame.top = value
			self.frame = frame
		}
	}
	
	/// Left coordinate
	public var left: CGFloat {
		get {
			return frame.left
		}
		set (value) {
			var frame = self.frame
			frame.left = value
			self.frame = frame
		}
	}
	
	/// Bottom coordinate
	public var bottom: CGFloat {
		get {
			return frame.bottom
		}
	}
	
	/// Right coordinate
	public var right: CGFloat {
		get {
			return frame.right
		}
	}
	
	/// Width
	public var width: CGFloat {
		get {
			return frame.width
		}
		set (value) {
			var frame = self.frame
			frame.width = value
			self.frame = frame
		}
	}
	
	/// Height
	public var height: CGFloat {
		get {
			return frame.height
		}
		set(value) {
			var frame = self.frame
			frame.height = value
			self.frame = frame
		}
	}
	
	/// Horizontal center coordinate
	public var centerX: CGFloat {
		get {
			return frame.centerX
		}
		set (value) {
			var frame = self.frame
			frame.centerX = value
			self.frame = frame
		}
	}
	
	/// Vertical center coordinate
	public var centerY: CGFloat {
		get {
			return frame.centerY
		}
		set (value) {
			var frame = self.frame
			frame.centerY = value
			self.frame = frame
		}
	}
	
	/// Corner Radius
	public var cornerRadius: CGFloat {
		get {
			return layer.cornerRadius
		}
		set (value) {
			layer.cornerRadius = value
			layer.rasterizationScale = UIScreen.mainScreen().scale
			layer.shouldRasterize = true
			clipsToBounds = true
		}
	}
}

extension UIScrollView {
	
	/// Top content inset
	public var contentInsetTop: CGFloat {
		get {
			return contentInset.top
		}
		set (value) {
			var inset = self.contentInset
			inset.top = value
			self.contentInset = inset
		}
	}
	
	/// Bottom content inset
	public var contentInsetBottom: CGFloat {
		get {
			return contentInset.bottom
		}
		set (value) {
			var inset = self.contentInset
			inset.bottom = value
			self.contentInset = inset
		}
	}
	
	// Left content Inset
	public var contentInsetLeft: CGFloat {
		get {
			return contentInset.left
		}
		set (value) {
			var inset = self.contentInset
			inset.left = value
			self.contentInset = inset
		}
	}
	
	// Right content inset
	public var contentInsetRight: CGFloat {
		get {
			return contentInset.right
		}
		set (value) {
			var inset = self.contentInset
			inset.right = value
			self.contentInset = inset
		}
	}
	
	/// Top content inset
	public var scrollIndicatorInsetTop: CGFloat {
		get {
			return scrollIndicatorInsets.top
		}
		set (value) {
			var inset = self.scrollIndicatorInsets
			inset.top = value
			self.scrollIndicatorInsets = inset
		}
	}
	
	/// Bottom content inset
	public var scrollIndicatorInsetBottom: CGFloat {
		get {
			return scrollIndicatorInsets.bottom
		}
		set (value) {
			var inset = self.scrollIndicatorInsets
			inset.bottom = value
			self.scrollIndicatorInsets = inset
		}
	}
	
	// Left content Inset
	public var scrollIndicatorInsetLeft: CGFloat {
		get {
			return scrollIndicatorInsets.left
		}
		set (value) {
			var inset = self.scrollIndicatorInsets
			inset.left = value
			self.scrollIndicatorInsets = inset
		}
	}
	
	// Right content inset
	public var scrollIndicatorInsetRight: CGFloat {
		get {
			return scrollIndicatorInsets.right
		}
		set (value) {
			var inset = self.scrollIndicatorInsets
			inset.right = value
			self.scrollIndicatorInsets = inset
		}
	}
}