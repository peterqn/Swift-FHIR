//
//  DeviceMetric.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (devicemetric.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Measurement, calculation or setting capability of a medical device.
 *
 *  Describes a measurement, calculation or setting capability of a medical device.
 */
public class DeviceMetric: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibrationInfo: [DeviceMetricCalibrationInfo]?
	
	/// measurement | setting | calculation | unspecified
	public var category: String?
	
	/// Describes the typical color of representation
	public var color: Identifier?
	
	/// Unique identifier of this DeviceMetric
	public var identifier: Identifier?
	
	/// Describes the physical principle of the measurement
	public var measurementMode: Identifier?
	
	/// Describes the measurement repetition time
	public var measurementPeriod: Timing?
	
	/// on | off | standby
	public var operationalState: String?
	
	/// Describes the link to the parent DeviceComponent
	public var parent: Reference?
	
	/// Describes the link to the source Device
	public var source: Reference?
	
	/// Type of metric
	public var type: CodeableConcept?
	
	/// Unit of metric
	public var unit: CodeableConcept?
	
	public convenience init(category: String?, identifier: Identifier?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["calibrationInfo"] as? [JSONDictionary] {
				self.calibrationInfo = DeviceMetricCalibrationInfo.from(val, owner: self) as? [DeviceMetricCalibrationInfo]
			}
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["color"] as? JSONDictionary {
				self.color = Identifier(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["measurementMode"] as? JSONDictionary {
				self.measurementMode = Identifier(json: val, owner: self)
			}
			if let val = js["measurementPeriod"] as? JSONDictionary {
				self.measurementPeriod = Timing(json: val, owner: self)
			}
			if let val = js["operationalState"] as? String {
				self.operationalState = val
			}
			if let val = js["parent"] as? JSONDictionary {
				self.parent = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? JSONDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unit"] as? JSONDictionary {
				self.unit = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let calibrationInfo = self.calibrationInfo {
			json["calibrationInfo"] = DeviceMetricCalibrationInfo.asJSONArray(calibrationInfo)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let color = self.color {
			json["color"] = color.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let measurementMode = self.measurementMode {
			json["measurementMode"] = measurementMode.asJSON()
		}
		if let measurementPeriod = self.measurementPeriod {
			json["measurementPeriod"] = measurementPeriod.asJSON()
		}
		if let operationalState = self.operationalState {
			json["operationalState"] = operationalState.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON()
		}
		
		return json
	}
}


/**
 *  Describes the calibrations that have been performed or that are required to be performed.
 */
public class DeviceMetricCalibrationInfo: FHIRElement
{
	override public class var resourceName: String {
		get { return "DeviceMetricCalibrationInfo" }
	}
	
	/// not-calibrated | calibration-required | calibrated | unspecified
	public var state: String?
	
	/// Describes the time last calibration has been performed
	public var time: Instant?
	
	/// unspecified | offset | gain | two-point
	public var type: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["state"] as? String {
				self.state = val
			}
			if let val = js["time"] as? String {
				self.time = Instant(string: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let state = self.state {
			json["state"] = state.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

