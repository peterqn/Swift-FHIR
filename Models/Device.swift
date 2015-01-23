//
//  Device.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (device.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  An instance of a manufactured thing that is used in the provision of healthcare.
 *
 *  This resource identifies an instance of a manufactured thing that is used in the provision of healthcare without
 *  being substantially changed through that activity. The device may be a machine, an insert, a computer, an
 *  application, etc. This includes durable (reusable) medical equipment as well as disposable equipment used for
 *  diagnostic, treatment, and research for healthcare and public health.
 */
public class Device: FHIRResource
{
	override public class var resourceName: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Date of expiry of this device (if applicable)
	public var expiry: Date?
	
	/// Instance id from manufacturer, owner and others
	public var identifier: [Identifier]?
	
	/// Where the resource is found
	public var location: Reference?
	
	/// Lot number of manufacture
	public var lotNumber: String?
	
	/// Name of device manufacturer
	public var manufacturer: String?
	
	/// Model id assigned by the manufacturer
	public var model: String?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// If the resource is affixed to a person
	public var patient: Reference?
	
	/// What kind of device this is
	public var type: CodeableConcept?
	
	/// FDA Mandated Unique Device Identifier
	public var udi: String?
	
	/// Network address to contact device
	public var url: NSURL?
	
	/// Version number (i.e. software)
	public var version: String?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["expiry"] as? String {
				self.expiry = Date(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["manufacturer"] as? String {
				self.manufacturer = val
			}
			if let val = js["model"] as? String {
				self.model = val
			}
			if let val = js["owner"] as? JSONDictionary {
				self.owner = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["udi"] as? String {
				self.udi = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = ContactPoint.asJSONArray(contact)
		}
		if let expiry = self.expiry {
			json["expiry"] = expiry.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let model = self.model {
			json["model"] = model.asJSON()
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

