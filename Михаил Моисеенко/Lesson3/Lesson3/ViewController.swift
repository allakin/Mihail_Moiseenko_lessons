//
//  ViewController.swift
//  Lesson3
//
//  Created by Павел Анплеенко on 06/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func pokazatSoosbsheniya(sender: UIButton) {
		
		let alert = UIAlertController(title: "Внимание!", message: "Вы учите свифт!", preferredStyle: .Alert)
		let yesButoon = UIAlertAction(title: "Ok", style: .Default, handler: nil)
		alert.addAction(yesButoon)
		presentViewController(alert, animated: true, completion: nil)
		
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

