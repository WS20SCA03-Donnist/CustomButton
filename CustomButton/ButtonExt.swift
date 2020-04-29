//
//  ButtonExt.swift
//  CustomButton
//
//  Created by Donavin Watson on 4/29/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit
import Foundation

extension UIButton {
	
	func pulsate() {
		
	
		let pulse = CASpringAnimation(keyPath: "transform.scale");
		pulse.duration = 0.3;
		pulse.fromValue = 0.95;
		pulse.toValue = 1.0;
		pulse.autoreverses = true;
		pulse.repeatCount = 3;
		pulse.initialVelocity = 0.5;
		pulse.damping = 1.0;
	
		layer.add(pulse, forKey: nil);
		
	}
	
	func flash() {
		
		let flash = CABasicAnimation(keyPath: "opacity");
		flash.duration = 0.5;
		flash.fromValue = 1;
		flash.toValue = 0.1;
		flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
		flash.autoreverses = true;
		flash.repeatCount = 3;
		
		layer.add(flash, forKey: nil);
	}
	
	func shake() {
		
		let shake = CABasicAnimation(keyPath: "position")
		shake.duration = 0.1;
		shake.repeatCount = 5;
		shake.autoreverses = true;
		
		let fromPoint = CGPoint(x: center.x - 5, y: center.y);
		let fromValue = NSValue(cgPoint: fromPoint);
		
		let toPoint = CGPoint(x: center.x + 5, y: center.y);
		let toValue = NSValue(cgPoint: toPoint)
		
		shake.fromValue = fromValue
		shake.toValue = toValue;
		
		layer.add(shake, forKey: nil);
		
		
	}
}
