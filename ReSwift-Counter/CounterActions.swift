//
//  CounterActions.swift
//  ReSwift-Counter
//
//  Created by 柯秉钧 on 16/7/7.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import Foundation
import ReSwift

struct CounterActionIncrease: StandardActionConvertible {

	static let type = "COUNTER_ACTION_INCREASE"

	init() { }
	init(_ standardAction: StandardAction) { }

	func toStandardAction() -> StandardAction {
		return StandardAction(type: CounterActionIncrease.type, payload: [:], isTypedAction: true)
	}

}

struct CounterActionDecrease: StandardActionConvertible {

	static let type = "COUNTER_ACTION_DECREASE"

	init() { }
	init(_ standardAction: StandardAction) { }

	func toStandardAction() -> StandardAction {
		return StandardAction(type: CounterActionDecrease.type, payload: [:], isTypedAction: true)
	}

}