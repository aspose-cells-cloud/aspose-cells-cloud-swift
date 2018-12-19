//
// WorkbookSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct WorkbookSettings: Codable {

    public var numberGroupSeparator: String?
    public var hidePivotFieldList: Bool?
    /** Represents whether the generated spreadsheet will be opened Minimized.              */
    public var isMinimized: Bool?
    /** Specifies the version of the calculation engine used to calculate values in the workbook.              */
    public var calculationId: String?
    /** Indicates whether re-calculate all formulas on opening file.              */
    public var reCalculateOnOpen: Bool?
    /** Whether check restriction of excel file when user modify cells related objects.  For example, excel does not allow inputting string value longer than 32K.  When you input a value longer than 32K such as by Cell.PutValue(string), if this property is true, you will get an Exception.  If this property is false, we will accept your input string value as the cell&#39;s value so that later you can output the complete string value for other file formats such as CSV.  However, if you have set such kind of value that is invalid for excel file format, you should not save the workbook as excel file format later. Otherwise there may be unexpected error for the generated excel file.              */
    public var checkExcelRestriction: Bool?
    /** Gets or sets a value indicating whether the generated spreadsheet will contain a horizontal scroll bar.                           Remarks: The default value is true.               */
    public var isHScrollBarVisible: Bool?
    /** The height of the window, in unit of point.              */
    public var windowHeight: Double?
    /** The distance from the left edge of the client area to the left edge of the window, in unit of point.              */
    public var windowLeft: Double?
    /** Specifies the stack size for calculating cells recursively.  The large value for this size will give better performance when there are lots of cells need to be calculated recursively.  On the other hand, larger value will raise the stakes of StackOverflowException.  If use gets StackOverflowException when calculating formulas, this value should be decreased.              */
    public var calcStackSize: Int32?
    /** Gets or sets a value that indicates whether the Workbook is shared.                           Remarks: The default value is false.               */
    public var shared: Bool?
    public var removePersonalInformation: Bool?
    /** Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.              */
    public var languageCode: String?
    public var enableMacros: Bool?
    public var isDefaultEncrypted: Bool?
    /** Indicates whether to recalculate before saving the document.              */
    public var recalculateBeforeSave: Bool?
    /** Indicates whether parsing the formula when reading the file.                           Remarks: Only applies for Excel Xlsx,Xltx, Xltm,Xlsm file because the formulas in the files are stored with a string formula.               */
    public var parsingFormulaOnOpen: Bool?
    /** The distance from the top edge of the client area to the top edge of the window, in unit of point.              */
    public var windowTop: Double?
    /** Gets or sets the system regional settings based on CountryCode at the time the file was saved.                           Remarks: If you do not want to use the region saved in the file, please reset it after reading the file.               */
    public var region: String?
    public var memorySetting: String?
    /** Indicates whether update adjacent cells&#39; border.                           Remarks: The default value is true.  For example: the bottom border of the cell A1 is update, the top border of the cell A2 should be changed too.               */
    public var updateAdjacentCellsBorder: Bool?
    public var crashSave: Bool?
    /** Get or sets a value whether the Workbook tabs are displayed.                           Remarks: The default value is true.               */
    public var showTabs: Bool?
    /** True if calculations in this workbook will be done using only the precision of the numbers as they&#39;re displayed              */
    public var precisionAsDisplayed: Bool?
    /** It specifies whether to calculate formulas manually, automatically or automatically except for multiple table operations.              */
    public var calcMode: String?
    public var autoCompressPictures: Bool?
    /** Gets or sets a value which represents if the workbook uses the 1904 date system.              */
    public var date1904: Bool?
    public var numberDecimalSeparator: String?
    /** Indicates if Aspose.Cells will use iteration to resolve circular references.              */
    public var iteration: Bool?
    /** Indicates whether check comptiliblity when saving workbook.                           Remarks:  The default value is true.               */
    public var checkComptiliblity: Bool?
    public var autoRecover: Bool?
    /** Returns or sets the maximum number of change that Microsoft Excel can use to resolve a circular reference.              */
    public var maxChange: Double?
    public var dataExtractLoad: Bool?
    /** Gets or sets the first visible worksheet tab.              */
    public var firstVisibleTab: Int32?
    /** Indicates whether this workbook is hidden.              */
    public var isHidden: Bool?
    /** Indicates if the Read Only Recommended option is selected.              */
    public var recommendReadOnly: Bool?
    /** Indicates whether and how to show objects in the workbook.              */
    public var displayDrawingObjects: String?
    /** Specifies the incremental public release of the application.              */
    public var buildVersion: String?
    /** Gets or sets a value indicating whether the generated spreadsheet will contain a vertical scroll bar.                           Remarks: The default value is true.               */
    public var isVScrollBarVisible: Bool?
    /** The width of the window, in unit of point.              */
    public var windowWidth: Double?
    /** Indicates whether create calculated formulas chain.              */
    public var createCalcChain: Bool?
    /** Returns or sets the maximum number of iterations that Aspose.Cells can use to resolve a circular reference.              */
    public var maxIteration: Int32?
    public var repairLoad: Bool?
    public var updateLinksType: String?
    /** Width of worksheet tab bar (in 1/1000 of window width).              */
    public var sheetTabBarWidth: Int32?

public enum CodingKeys: String, CodingKey { 
        case numberGroupSeparator = "NumberGroupSeparator"
        case hidePivotFieldList = "HidePivotFieldList"
        case isMinimized = "IsMinimized"
        case calculationId = "CalculationId"
        case reCalculateOnOpen = "ReCalculateOnOpen"
        case checkExcelRestriction = "CheckExcelRestriction"
        case isHScrollBarVisible = "IsHScrollBarVisible"
        case windowHeight = "WindowHeight"
        case windowLeft = "WindowLeft"
        case calcStackSize = "CalcStackSize"
        case shared = "Shared"
        case removePersonalInformation = "RemovePersonalInformation"
        case languageCode = "LanguageCode"
        case enableMacros = "EnableMacros"
        case isDefaultEncrypted = "IsDefaultEncrypted"
        case recalculateBeforeSave = "RecalculateBeforeSave"
        case parsingFormulaOnOpen = "ParsingFormulaOnOpen"
        case windowTop = "WindowTop"
        case region = "Region"
        case memorySetting = "MemorySetting"
        case updateAdjacentCellsBorder = "UpdateAdjacentCellsBorder"
        case crashSave = "CrashSave"
        case showTabs = "ShowTabs"
        case precisionAsDisplayed = "PrecisionAsDisplayed"
        case calcMode = "CalcMode"
        case autoCompressPictures = "AutoCompressPictures"
        case date1904 = "Date1904"
        case numberDecimalSeparator = "NumberDecimalSeparator"
        case iteration = "Iteration"
        case checkComptiliblity = "CheckComptiliblity"
        case autoRecover = "AutoRecover"
        case maxChange = "MaxChange"
        case dataExtractLoad = "DataExtractLoad"
        case firstVisibleTab = "FirstVisibleTab"
        case isHidden = "IsHidden"
        case recommendReadOnly = "RecommendReadOnly"
        case displayDrawingObjects = "DisplayDrawingObjects"
        case buildVersion = "BuildVersion"
        case isVScrollBarVisible = "IsVScrollBarVisible"
        case windowWidth = "WindowWidth"
        case createCalcChain = "CreateCalcChain"
        case maxIteration = "MaxIteration"
        case repairLoad = "RepairLoad"
        case updateLinksType = "UpdateLinksType"
        case sheetTabBarWidth = "SheetTabBarWidth"
    }

    public init(numberGroupSeparator: String?, hidePivotFieldList: Bool?, isMinimized: Bool?, calculationId: String?, reCalculateOnOpen: Bool?, checkExcelRestriction: Bool?, isHScrollBarVisible: Bool?, windowHeight: Double?, windowLeft: Double?, calcStackSize: Int32?, shared: Bool?, removePersonalInformation: Bool?, languageCode: String?, enableMacros: Bool?, isDefaultEncrypted: Bool?, recalculateBeforeSave: Bool?, parsingFormulaOnOpen: Bool?, windowTop: Double?, region: String?, memorySetting: String?, updateAdjacentCellsBorder: Bool?, crashSave: Bool?, showTabs: Bool?, precisionAsDisplayed: Bool?, calcMode: String?, autoCompressPictures: Bool?, date1904: Bool?, numberDecimalSeparator: String?, iteration: Bool?, checkComptiliblity: Bool?, autoRecover: Bool?, maxChange: Double?, dataExtractLoad: Bool?, firstVisibleTab: Int32?, isHidden: Bool?, recommendReadOnly: Bool?, displayDrawingObjects: String?, buildVersion: String?, isVScrollBarVisible: Bool?, windowWidth: Double?, createCalcChain: Bool?, maxIteration: Int32?, repairLoad: Bool?, updateLinksType: String?, sheetTabBarWidth: Int32?) {
        self.numberGroupSeparator = numberGroupSeparator
        self.hidePivotFieldList = hidePivotFieldList
        self.isMinimized = isMinimized
        self.calculationId = calculationId
        self.reCalculateOnOpen = reCalculateOnOpen
        self.checkExcelRestriction = checkExcelRestriction
        self.isHScrollBarVisible = isHScrollBarVisible
        self.windowHeight = windowHeight
        self.windowLeft = windowLeft
        self.calcStackSize = calcStackSize
        self.shared = shared
        self.removePersonalInformation = removePersonalInformation
        self.languageCode = languageCode
        self.enableMacros = enableMacros
        self.isDefaultEncrypted = isDefaultEncrypted
        self.recalculateBeforeSave = recalculateBeforeSave
        self.parsingFormulaOnOpen = parsingFormulaOnOpen
        self.windowTop = windowTop
        self.region = region
        self.memorySetting = memorySetting
        self.updateAdjacentCellsBorder = updateAdjacentCellsBorder
        self.crashSave = crashSave
        self.showTabs = showTabs
        self.precisionAsDisplayed = precisionAsDisplayed
        self.calcMode = calcMode
        self.autoCompressPictures = autoCompressPictures
        self.date1904 = date1904
        self.numberDecimalSeparator = numberDecimalSeparator
        self.iteration = iteration
        self.checkComptiliblity = checkComptiliblity
        self.autoRecover = autoRecover
        self.maxChange = maxChange
        self.dataExtractLoad = dataExtractLoad
        self.firstVisibleTab = firstVisibleTab
        self.isHidden = isHidden
        self.recommendReadOnly = recommendReadOnly
        self.displayDrawingObjects = displayDrawingObjects
        self.buildVersion = buildVersion
        self.isVScrollBarVisible = isVScrollBarVisible
        self.windowWidth = windowWidth
        self.createCalcChain = createCalcChain
        self.maxIteration = maxIteration
        self.repairLoad = repairLoad
        self.updateLinksType = updateLinksType
        self.sheetTabBarWidth = sheetTabBarWidth
    }


}
