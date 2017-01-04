//
//  TestReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/TestReport) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Describes the results of a TestScript execution.

TestReport is a resource that includes summary information on the results of executing a TestScript.
*/
open class TestReport: DomainResource {
	override open class var resourceType: String {
		get { return "TestReport" }
	}
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// When the TestScript was executed and this TestReport was generated.
	public var issued: DateTime?
	
	/// Informal name of the executed TestScript.
	public var name: FHIRString?
	
	/// A participant in the test execution, either the execution engine, a client, or a server.
	public var participant: [TestReportParticipant]?
	
	/// The overall result from the execution of the TestScript.
	public var result: TestReportResult?
	
	/// The final score (percentage of tests passed) resulting from the execution of the TestScript.
	public var score: FHIRDecimal?
	
	/// The results of the series of required setup operations before the tests were executed.
	public var setup: TestReportSetup?
	
	/// The current state of this test report.
	public var status: TestReportStatus?
	
	/// The results of running the series of required clean up steps.
	public var teardown: TestReportTeardown?
	
	/// A test executed from the test script.
	public var test: [TestReportTest]?
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport.
	public var testScript: Reference?
	
	/// Name of the tester producing this report (Organization or individual).
	public var tester: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportResult, status: TestReportStatus, testScript: Reference) {
		self.init()
		self.result = result
		self.status = status
		self.testScript = testScript
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		issued = try createInstance(type: DateTime.self, for: "issued", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issued
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		participant = try createInstances(of: TestReportParticipant.self, for: "participant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participant
		result = createEnum(type: TestReportResult.self, for: "result", in: json, presentKeys: &presentKeys, errors: &errors) ?? result
		if nil == result && !presentKeys.contains("result") {
			errors.append(FHIRValidationError(missing: "result"))
		}
		score = try createInstance(type: FHIRDecimal.self, for: "score", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? score
		setup = try createInstance(type: TestReportSetup.self, for: "setup", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? setup
		status = createEnum(type: TestReportStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		teardown = try createInstance(type: TestReportTeardown.self, for: "teardown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? teardown
		test = try createInstances(of: TestReportTest.self, for: "test", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? test
		testScript = try createInstance(type: Reference.self, for: "testScript", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? testScript
		if nil == testScript && !presentKeys.contains("testScript") {
			errors.append(FHIRValidationError(missing: "testScript"))
		}
		tester = try createInstance(type: FHIRString.self, for: "tester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? tester
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
		self.score?.decorate(json: &json, withKey: "score", errors: &errors)
		self.setup?.decorate(json: &json, withKey: "setup", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.teardown?.decorate(json: &json, withKey: "teardown", errors: &errors)
		arrayDecorate(json: &json, withKey: "test", using: self.test, errors: &errors)
		self.testScript?.decorate(json: &json, withKey: "testScript", errors: &errors)
		if nil == self.testScript {
			errors.append(FHIRValidationError(missing: "testScript"))
		}
		self.tester?.decorate(json: &json, withKey: "tester", errors: &errors)
	}
}


/**
A participant in the test execution, either the execution engine, a client, or a server.
*/
open class TestReportParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportParticipant" }
	}
	
	/// The display name of the participant.
	public var display: FHIRString?
	
	/// The type of participant.
	public var type: TestReportParticipantType?
	
	/// The uri of the participant. An absolute URL is preferred.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TestReportParticipantType, uri: FHIRURL) {
		self.init()
		self.type = type
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		type = createEnum(type: TestReportParticipantType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		uri = try createInstance(type: FHIRURL.self, for: "uri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? uri
		if nil == uri && !presentKeys.contains("uri") {
			errors.append(FHIRValidationError(missing: "uri"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
		if nil == self.uri {
			errors.append(FHIRValidationError(missing: "uri"))
		}
	}
}


/**
The results of the series of required setup operations before the tests were executed.
*/
open class TestReportSetup: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetup" }
	}
	
	/// A setup operation or assert that was executed.
	public var action: [TestReportSetupAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportSetupAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstances(of: TestReportSetupAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !presentKeys.contains("action") {
			errors.append(FHIRValidationError(missing: "action"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
	}
}


/**
A setup operation or assert that was executed.

Action would contain either an operation or an assertion.
*/
open class TestReportSetupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupAction" }
	}
	
	/// The assertion to perform.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation to perform.
	public var operation: TestReportSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		assert = try createInstance(type: TestReportSetupActionAssert.self, for: "assert", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assert
		operation = try createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
	}
}


/**
The assertion to perform.

The results of the assertion performed on the previous operations.
*/
open class TestReportSetupActionAssert: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionAssert" }
	}
	
	/// A link to further details on the result.
	public var detail: FHIRString?
	
	/// A message associated with the result.
	public var message: FHIRString?
	
	/// The result of this assertion.
	public var result: TestReportActionResult?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportActionResult) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		detail = try createInstance(type: FHIRString.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		message = try createInstance(type: FHIRString.self, for: "message", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? message
		result = createEnum(type: TestReportActionResult.self, for: "result", in: json, presentKeys: &presentKeys, errors: &errors) ?? result
		if nil == result && !presentKeys.contains("result") {
			errors.append(FHIRValidationError(missing: "result"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.message?.decorate(json: &json, withKey: "message", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
	}
}


/**
The operation to perform.

The operation performed.
*/
open class TestReportSetupActionOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionOperation" }
	}
	
	/// A link to further details on the result.
	public var detail: FHIRURL?
	
	/// A message associated with the result.
	public var message: FHIRString?
	
	/// The result of this operation.
	public var result: TestReportActionResult?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportActionResult) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		detail = try createInstance(type: FHIRURL.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		message = try createInstance(type: FHIRString.self, for: "message", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? message
		result = createEnum(type: TestReportActionResult.self, for: "result", in: json, presentKeys: &presentKeys, errors: &errors) ?? result
		if nil == result && !presentKeys.contains("result") {
			errors.append(FHIRValidationError(missing: "result"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.message?.decorate(json: &json, withKey: "message", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
	}
}


/**
The results of running the series of required clean up steps.

The results of the series of operations required to clean up after the all the tests were executed (successfully or
otherwise).
*/
open class TestReportTeardown: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardown" }
	}
	
	/// One or more teardown operations performed.
	public var action: [TestReportTeardownAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTeardownAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstances(of: TestReportTeardownAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !presentKeys.contains("action") {
			errors.append(FHIRValidationError(missing: "action"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
	}
}


/**
One or more teardown operations performed.

The teardown action will only contain an operation.
*/
open class TestReportTeardownAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardownAction" }
	}
	
	/// The teardown operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(operation: TestReportSetupActionOperation) {
		self.init()
		self.operation = operation
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		operation = try createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operation
		if nil == operation && !presentKeys.contains("operation") {
			errors.append(FHIRValidationError(missing: "operation"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
		if nil == self.operation {
			errors.append(FHIRValidationError(missing: "operation"))
		}
	}
}


/**
A test executed from the test script.
*/
open class TestReportTest: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTest" }
	}
	
	/// A test operation or assert that was performed.
	public var action: [TestReportTestAction]?
	
	/// Tracking/reporting short description of the test.
	public var description_fhir: FHIRString?
	
	/// Tracking/logging name of this test.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTestAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = try createInstances(of: TestReportTestAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !presentKeys.contains("action") {
			errors.append(FHIRValidationError(missing: "action"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
	}
}


/**
A test operation or assert that was performed.

Action would contain either an operation or an assertion.
*/
open class TestReportTestAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTestAction" }
	}
	
	/// The assertion performed.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		assert = try createInstance(type: TestReportSetupActionAssert.self, for: "assert", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assert
		operation = try createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operation
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
	}
}
