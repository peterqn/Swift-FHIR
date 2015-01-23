//
//  SlotTests.swift
//  SlotTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SlotTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Slot {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Slot {
		let instance = Slot(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSlot1() {
		let instance = testSlot1_impl()
		testSlot1_impl(json: instance.asJSON())
	}
	
	func testSlot1_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-busy.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier![0].value!, "123132")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertTrue(inst.overbooked!)
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot2() {
		let instance = testSlot2_impl()
		testSlot2_impl(json: instance.asJSON())
	}
	
	func testSlot2_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-busy.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier![0].value!, "123132")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertTrue(inst.overbooked!)
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot3() {
		let instance = testSlot3_impl()
		testSlot3_impl(json: instance.asJSON())
	}
	
	func testSlot3_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-busy.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier![0].value!, "123132")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertTrue(inst.overbooked!)
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot4() {
		let instance = testSlot4_impl()
		testSlot4_impl(json: instance.asJSON())
	}
	
	func testSlot4_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-tentative.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T10:00:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-TENTATIVE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot5() {
		let instance = testSlot5_impl()
		testSlot5_impl(json: instance.asJSON())
	}
	
	func testSlot5_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-tentative.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T10:00:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-TENTATIVE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot6() {
		let instance = testSlot6_impl()
		testSlot6_impl(json: instance.asJSON())
	}
	
	func testSlot6_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-unavailable.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-UNAVAILABLE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot7() {
		let instance = testSlot7_impl()
		testSlot7_impl(json: instance.asJSON())
	}
	
	func testSlot7_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example-unavailable.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-UNAVAILABLE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot8() {
		let instance = testSlot8_impl()
		testSlot8_impl(json: instance.asJSON())
	}
	
	func testSlot8_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.freeBusyType!, "FREE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot9() {
		let instance = testSlot9_impl()
		testSlot9_impl(json: instance.asJSON())
	}
	
	func testSlot9_impl(json: JSONDictionary? = nil) -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "slot-example.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.freeBusyType!, "FREE")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
}
