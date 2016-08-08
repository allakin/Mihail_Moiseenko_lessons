//
//  ViewController.swift
//  Lesson7
//
//  Created by Павел Анплеенко on 07/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

	let razdelNames = ["Европа", "Азия", "Австралия", "Африка", "Америка"]

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return razdelNames.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cellIndeficator = "idCell"
		let cell = tableView.dequeueReusableCellWithIdentifier(cellIndeficator, forIndexPath: indexPath)
		cell.textLabel?.text = razdelNames[indexPath.row]
		cell.imageView?.image = UIImage(named: "location-icon-300x300")
		return cell
	}
	
	//скрытие статс бара
	override func prefersStatusBarHidden() -> Bool {
		return true
	}

	// MARK: - viewDidLoad
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	// MARK: - didReceiveMemoryWarning
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

