//
//  Reference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (Reference.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A reference from one resource to another.
 */
public class Reference: FHIRElement
{
	override public class var resourceName: String {
		get { return "Reference" }
	}
	
	/// Text alternative for the resource
	public var display: String?
	
	/// Relative, internal or absolute URL reference
	public var reference: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}

