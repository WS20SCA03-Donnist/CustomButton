//
//  CustomButton.swift
//  CustomButton
//
//  Created by Donavin Watson on 4/29/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
	
	override func draw(_ rect: CGRect) {
		
		
			// Drawing code
			super.draw(rect);
		
			if layer.borderWidth <= 0.0 {
				layer.borderWidth = 4.0;   //default is 0.0
				layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
				layer.shadowOffset = CGSize (width: 0, height: -8)
				layer.shadowOpacity = 1.0
				layer.shadowRadius = 5
					
			
			}

			//If the BorderButton has a titleLabel,
			//make the border the same color as the titleLabel.

			let color: UIColor = titleLabel == nil ? .black : titleLabel!.textColor;
			layer.borderColor = color.cgColor;   //.borderColor is CGColor?, not UIColor
		}

	}
