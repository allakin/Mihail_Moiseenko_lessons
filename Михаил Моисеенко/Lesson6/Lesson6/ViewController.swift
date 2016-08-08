//
//  ViewController.swift
//  Lesson6
//
//  Created by Павел Анплеенко on 06/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var myLabel: UILabel!
	
	@IBOutlet weak var fsfsf: UISwitch!

	@IBAction func buttonSelect(sender: UIButton) {
		
		myLabel.text = "Кнопка сработала"
		
	}

	@IBAction func cancelButton(sender: UIButton) {
		
		myLabel.text = "Label"
		
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

