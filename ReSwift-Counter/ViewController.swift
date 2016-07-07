//
//  ViewController.swift
//  ReSwift-Counter
//
//  Created by 柯秉钧 on 16/7/6.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {

	@IBOutlet weak var label: UILabel!
	var count: Int?
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewWillAppear(animated: Bool) {
		mainStore.subscribe(self)
	}
	override func viewWillDisappear(animated: Bool) {
		mainStore.unsubscribe(self)
	}

	func newState(state: AppState) {
		label.text = "\(state.counter)"
		self.count = state.counter
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func decrese(sender: UIButton) {
		print("----")
		mainStore.dispatch(CounterActionDecrease())
	}
	@IBAction func Add(sender: UIButton) {
		print("++++")
		mainStore.dispatch(CounterActionIncrease())

	}

}

