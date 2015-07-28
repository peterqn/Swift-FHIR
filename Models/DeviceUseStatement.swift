//
//  DeviceUseStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A record of a device being used by a patient where the record is the result of a report from the patient or another
 *  clinician..
 *
 *  A record of a device being used by a patient where the record is the result of a report from the patient or another
 *  clinician.
 */
public class DeviceUseStatement: DomainResource
{
	override public class var resourceName: String {
		get { return "DeviceUseStatement" }
	}
	
	/// Target body site
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Target body site
	public var bodySiteReference: Reference?
	
	/// The details of the device used.
	public var device: Reference?
	
	/// An external identifier for this statement such as an IRI.
	public var identifier: [Identifier]?
	
	/// Reason or justification for the use of the device.
	public var indication: [CodeableConcept]?
	
	/// Details about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.
	public var notes: [String]?
	
	/// The time at which the statement was made/recorded.
	public var recordedOn: DateTime?
	
	/// The patient who used the device.
	public var subject: Reference?
	
	/// How often the device was used.
	public var timingDateTime: DateTime?
	
	/// How often the device was used.
	public var timingPeriod: Period?
	
	/// How often the device was used.
	public var timingTiming: Timing?
	
	/// The time period over which the device was used.
	public var whenUsed: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(device: Reference?, subject: Reference?) {
		self.init(json: nil)
		if nil != device {
			self.device = device
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["bodySiteCodeableConcept"] {
				presentKeys.insert("bodySiteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySiteCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["bodySiteReference"] {
				presentKeys.insert("bodySiteReference")
				if let val = exist as? FHIRJSON {
					self.bodySiteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySiteReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? FHIRJSON {
					self.device = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "device"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["indication"] {
				presentKeys.insert("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "indication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? [String] {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["recordedOn"] {
				presentKeys.insert("recordedOn")
				if let val = exist as? String {
					self.recordedOn = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "recordedOn", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist: AnyObject = js["timingDateTime"] {
				presentKeys.insert("timingDateTime")
				if let val = exist as? String {
					self.timingDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timingDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingPeriod"] {
				presentKeys.insert("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingTiming"] {
				presentKeys.insert("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whenUsed"] {
				presentKeys.insert("whenUsed")
				if let val = exist as? FHIRJSON {
					self.whenUsed = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whenUsed", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let notes = self.notes {
			var arr = [AnyObject]()
			for val in notes {
				arr.append(val.asJSON())
			}
			json["notes"] = arr
		}
		if let recordedOn = self.recordedOn {
			json["recordedOn"] = recordedOn.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		if let whenUsed = self.whenUsed {
			json["whenUsed"] = whenUsed.asJSON()
		}
		
		return json
	}
}

