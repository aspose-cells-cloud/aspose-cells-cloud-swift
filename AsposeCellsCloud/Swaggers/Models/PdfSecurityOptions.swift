//
// PdfSecurityOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PdfSecurityOptions: Codable {

    public var annotationsPermission: Bool?
    public var assembleDocumentPermission: Bool?
    /** Make the workbook empty after saving the file. */
    public var extractContentPermission: Bool?
    /** The cached file folder is used to store some large data. */
    public var extractContentPermissionObsolete: Bool?
    /** Indicates whether validate merged areas before saving the file. The default value is false.              */
    public var fillFormsPermission: Bool?
    public var fullQualityPrintPermission: Bool?
    /** If true and the directory does not exist, the directory will be automatically created before saving the file.              */
    public var modifyDocumentPermission: Bool?
    public var ownerPassword: String?
    public var printPermission: Bool?
    public var userPassword: String?

public enum CodingKeys: String, CodingKey { 
        case annotationsPermission = "AnnotationsPermission"
        case assembleDocumentPermission = "AssembleDocumentPermission"
        case extractContentPermission = "ExtractContentPermission"
        case extractContentPermissionObsolete = "ExtractContentPermissionObsolete"
        case fillFormsPermission = "FillFormsPermission"
        case fullQualityPrintPermission = "FullQualityPrintPermission"
        case modifyDocumentPermission = "ModifyDocumentPermission"
        case ownerPassword = "OwnerPassword"
        case printPermission = "PrintPermission"
        case userPassword = "UserPassword"
    }

    public init(annotationsPermission: Bool?, assembleDocumentPermission: Bool?, extractContentPermission: Bool?, extractContentPermissionObsolete: Bool?, fillFormsPermission: Bool?, fullQualityPrintPermission: Bool?, modifyDocumentPermission: Bool?, ownerPassword: String?, printPermission: Bool?, userPassword: String?) {
        self.annotationsPermission = annotationsPermission
        self.assembleDocumentPermission = assembleDocumentPermission
        self.extractContentPermission = extractContentPermission
        self.extractContentPermissionObsolete = extractContentPermissionObsolete
        self.fillFormsPermission = fillFormsPermission
        self.fullQualityPrintPermission = fullQualityPrintPermission
        self.modifyDocumentPermission = modifyDocumentPermission
        self.ownerPassword = ownerPassword
        self.printPermission = printPermission
        self.userPassword = userPassword
    }


}
