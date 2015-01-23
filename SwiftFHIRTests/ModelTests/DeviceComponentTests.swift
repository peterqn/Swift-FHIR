//
//  DeviceComponentTests.swift
//  DeviceComponentTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceComponentTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DeviceComponent {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DeviceComponent {
		let instance = DeviceComponent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceComponent1() {
		let instance = testDeviceComponent1_impl()
		testDeviceComponent1_impl(json: instance.asJSON())
	}
	
	func testDeviceComponent1_impl(json: JSONDictionary? = nil) -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicecomponent-example-prodspec.canonical.json")
		
		XCTAssertEqual(inst.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString!, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		XCTAssertEqual(inst.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent2() {
		let instance = testDeviceComponent2_impl()
		testDeviceComponent2_impl(json: instance.asJSON())
	}
	
	func testDeviceComponent2_impl(json: JSONDictionary? = nil) -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicecomponent-example-prodspec.canonical.json")
		
		XCTAssertEqual(inst.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString!, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		XCTAssertEqual(inst.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent3() {
		let instance = testDeviceComponent3_impl()
		testDeviceComponent3_impl(json: instance.asJSON())
	}
	
	func testDeviceComponent3_impl(json: JSONDictionary? = nil) -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicecomponent-example-prodspec.json")
		
		XCTAssertEqual(inst.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString!, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		XCTAssertEqual(inst.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent4() {
		let instance = testDeviceComponent4_impl()
		testDeviceComponent4_impl(json: instance.asJSON())
	}
	
	func testDeviceComponent4_impl(json: JSONDictionary? = nil) -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicecomponent-example.canonical.json")
		
		XCTAssertEqual(inst.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString!, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent5() {
		let instance = testDeviceComponent5_impl()
		testDeviceComponent5_impl(json: instance.asJSON())
	}
	
	func testDeviceComponent5_impl(json: JSONDictionary? = nil) -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicecomponent-example.json")
		
		XCTAssertEqual(inst.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString!, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:std:iso:11073:10101")
		
		return inst
	}
}
