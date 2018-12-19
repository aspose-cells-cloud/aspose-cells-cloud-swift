//
// DataBar.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Describe the DataBar conditional formatting rule. This conditional formatting    rule displays a gradated data bar in the range of cells. */

public struct DataBar: Codable {

    /** Gets or sets the direction the databar is displayed. */
    public var direction: String?
    /** Get or set this DataBar&#39;s max value object.  Cannot set null or CFValueObject    with type FormatConditionValueType.Min to it.              */
    public var maxCfvo: ConditionalFormattingValue?
    /** Get or set this DataBar&#39;s Color.              */
    public var color: Color?
    /** Represents the min length of data bar .              */
    public var minLength: Int32?
    /** Gets or sets how a data bar is filled with color. */
    public var barFillType: String?
    /** Get or set this DataBar&#39;s min value object.  Cannot set null or CFValueObject   with type FormatConditionValueType.Max to it.              */
    public var minCfvo: ConditionalFormattingValue?
    /** Gets or sets the position of the axis of the data bars specified by a conditional    formatting rule. */
    public var axisPosition: String?
    /** Gets the NegativeBarFormat object associated with a data bar conditional     formatting rule. */
    public var negativeBarFormat: NegativeBarFormat?
    /** Gets an object that specifies the border of a data bar. */
    public var barBorder: DataBarBorder?
    /** Gets the color of the axis for cells with conditional formatting as data bars. */
    public var axisColor: Color?
    /** Represents the max length of data bar . */
    public var maxLength: Int32?
    /** Get or set the flag indicating whether to show the values of the cells on   which this data bar is applied.  Default value is true.              */
    public var showValue: Bool?

public enum CodingKeys: String, CodingKey { 
        case direction = "Direction"
        case maxCfvo = "MaxCfvo"
        case color = "Color"
        case minLength = "MinLength"
        case barFillType = "BarFillType"
        case minCfvo = "MinCfvo"
        case axisPosition = "AxisPosition"
        case negativeBarFormat = "NegativeBarFormat"
        case barBorder = "BarBorder"
        case axisColor = "AxisColor"
        case maxLength = "MaxLength"
        case showValue = "ShowValue"
    }

    public init(direction: String?, maxCfvo: ConditionalFormattingValue?, color: Color?, minLength: Int32?, barFillType: String?, minCfvo: ConditionalFormattingValue?, axisPosition: String?, negativeBarFormat: NegativeBarFormat?, barBorder: DataBarBorder?, axisColor: Color?, maxLength: Int32?, showValue: Bool?) {
        self.direction = direction
        self.maxCfvo = maxCfvo
        self.color = color
        self.minLength = minLength
        self.barFillType = barFillType
        self.minCfvo = minCfvo
        self.axisPosition = axisPosition
        self.negativeBarFormat = negativeBarFormat
        self.barBorder = barBorder
        self.axisColor = axisColor
        self.maxLength = maxLength
        self.showValue = showValue
    }


}
