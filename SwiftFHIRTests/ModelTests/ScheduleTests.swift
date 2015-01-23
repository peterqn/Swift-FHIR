//
//  ScheduleTests.swift
//  ScheduleTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ScheduleTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Schedule {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Schedule {
		let instance = Schedule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSchedule1() {
		let instance = testSchedule1_impl()
		testSchedule1_impl(json: instance.asJSON())
	}
	
	func testSchedule1_impl(json: JSONDictionary? = nil) -> Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "schedule-example.canonical.json")
		
		XCTAssertEqual(inst.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor!.reference!, "Location/1")
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSchedule2() {
		let instance = testSchedule2_impl()
		testSchedule2_impl(json: instance.asJSON())
	}
	
	func testSchedule2_impl(json: JSONDictionary? = nil) -> Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "schedule-example.canonical.json")
		
		XCTAssertEqual(inst.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor!.reference!, "Location/1")
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSchedule3() {
		let instance = testSchedule3_impl()
		testSchedule3_impl(json: instance.asJSON())
	}
	
	func testSchedule3_impl(json: JSONDictionary? = nil) -> Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "schedule-example.json")
		
		XCTAssertEqual(inst.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor!.reference!, "Location/1")
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Physiotherapy")
		
		return inst
	}
}
