//
//  DocumentManifest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (documentmanifest.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
 */
public class DocumentManifest: FHIRResource
{
	override public class var resourceName: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Sensitivity of set of documents
	public var confidentiality: CodeableConcept?
	
	/// Contents of this set of documents
	public var content: [Reference]?
	
	/// When this document manifest created
	public var created: DateTime?
	
	/// Human-readable description (title)
	public var description: String?
	
	/// Other identifiers for the manifest
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents
	public var recipient: [Reference]?
	
	/// The source system/application/software
	public var source: NSURL?
	
	/// current | superceded | entered in error
	public var status: String?
	
	/// The subject of the set of documents
	public var subject: [Reference]?
	
	/// If this document manifest replaces another
	public var supercedes: Reference?
	
	/// What kind of document set this is
	public var type: CodeableConcept?
	
	public convenience init(content: [Reference]?, masterIdentifier: Identifier?, status: String?, subject: [Reference]?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? [JSONDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["confidentiality"] as? JSONDictionary {
				self.confidentiality = CodeableConcept(json: val, owner: self)
			}
			if let val = js["content"] as? [JSONDictionary] {
				self.content = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["masterIdentifier"] as? JSONDictionary {
				self.masterIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["recipient"] as? [JSONDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["source"] as? String {
				self.source = NSURL(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? [JSONDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["supercedes"] as? JSONDictionary {
				self.supercedes = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let confidentiality = self.confidentiality {
			json["confidentiality"] = confidentiality.asJSON()
		}
		if let content = self.content {
			json["content"] = Reference.asJSONArray(content)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let description = self.description {
			json["description"] = description.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = Reference.asJSONArray(recipient)
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = Reference.asJSONArray(subject)
		}
		if let supercedes = self.supercedes {
			json["supercedes"] = supercedes.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

