//
// NegativeBarFormat.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Represents the color settings of the data bars for negative values that are    defined by a data bar conditional formating rule.              */

public struct NegativeBarFormat: Codable {

    /** Gets or sets a FormatColor object that you can use to specify the border    color for negative data bars.              */
    public var borderColor: Color?
    /** Gets or sets a FormatColor object that you can use to specify the fill color    for negative data bars.              */
    public var color: Color?
    /** Gets whether to use the same border color as positive data bars.              */
    public var borderColorType: String?
    /** Gets or sets whether to use the same fill color as positive data bars. */
    public var colorType: String?

public enum CodingKeys: String, CodingKey { 
        case borderColor = "BorderColor"
        case color = "Color"
        case borderColorType = "BorderColorType"
        case colorType = "ColorType"
    }

    public init(borderColor: Color?, color: Color?, borderColorType: String?, colorType: String?) {
        self.borderColor = borderColor
        self.color = color
        self.borderColorType = borderColorType
        self.colorType = colorType
    }


}

