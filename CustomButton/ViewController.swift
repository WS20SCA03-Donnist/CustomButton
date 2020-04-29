//
//  ViewController.swift
//  CustomButton
//
//  Created by Donavin Watson on 4/29/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

	@IBOutlet var buttons: [UIButton]!
	
	@IBOutlet weak var customLabel: UILabel!
	
	var audioPlayer : AVAudioPlayer = AVAudioPlayer()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	 let path: String = Bundle.main.path(forResource: "flashGordonTheme", ofType: "mp3")!
			print("path = \(path)")
			
			do {
				audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
			} catch {
				print(error)
			}
			audioPlayer.enableRate = true
			audioPlayer.prepareToPlay()
			audioPlayer.numberOfLoops = 0   //Plays once (-1 for infinite loop)
			audioPlayer.volume = 0.5
			audioPlayer.play()
		}

	@IBAction func pulseButtonPressed(_ sender: UIButton) {
		sender.pulsate()
		customLabel.text = "Cool pulse man!"
	}
	
	@IBAction func flashButtonPressed(_ sender: UIButton) {
		sender.flash()
		audioPlayer.play()
		customLabel.text = "Flash! Ah Ahh... Savior of the universe."
		
	}
	
	@IBAction func shakeButtonPressed(_ sender: UIButton) {
		sender.shake()
		customLabel.text = "Shake it like a salt shaker."
	}
	
	
	


	
	
	
	
	
}

