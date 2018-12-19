//
// PageSection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PageSection: Codable {

    public var picture: String?
    /** 0,1,2  left , middle ,right */
    public var section: Int32
    /** fisrt page context script */
    public var fisrtPageContext: String?
    /** page context script              */
    public var context: String?
    /** Even page context script */
    public var evenPageContext: String?

public enum CodingKeys: String, CodingKey { 
        case picture = "Picture"
        case section = "Section"
        case fisrtPageContext = "FisrtPageContext"
        case context = "Context"
        case evenPageContext = "EvenPageContext"
    }

    public init(picture: String?, section: Int32, fisrtPageContext: String?, context: String?, evenPageContext: String?) {
        self.picture = picture
        self.section = section
        self.fisrtPageContext = fisrtPageContext
        self.context = context
        self.evenPageContext = evenPageContext
    }


}

