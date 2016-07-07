//
//  CounterReducer.swift
//  ReSwift-Counter
//
//  Created by 柯秉钧 on 16/7/7.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import Foundation
import ReSwift

struct AppReducer: Reducer {

	func handleAction(action: Action, state: AppState?) -> AppState {
		return AppState(
			counter: counterReducer(action, counter: state?.counter)
		)
	}

}

func counterReducer(action: Action, counter: Int?) -> Int {
	var counter = counter ?? 0

	switch action {
	case _ as CounterActionIncrease:
		counter += 1
	case _ as CounterActionDecrease:
		counter -= 1
	default:
		break
	}

	return counter
}