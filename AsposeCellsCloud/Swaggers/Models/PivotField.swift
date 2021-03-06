//
// PivotField.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PivotField: Codable {

    public var pivotItems: [PivotItem]?
    public var displayName: String?
    public var numberFormat: String?
    public var dragToColumn: Bool?
    public var isAutoShow: Bool?
    public var isRepeatItemLabels: Bool?
    public var dragToRow: Bool?
    public var isAutoSort: Bool?
    public var insertBlankRow: Bool?
    public var showSubtotalAtTop: Bool?
    public var showCompact: Bool?
    public var function: String?
    public var isMultipleItemSelectionAllowed: Bool?
    public var dataDisplayFormat: String?
    public var baseItemPosition: String?
    public var isInsertPageBreaksBetweenItems: Bool?
    public var showAllItems: Bool?
    public var baseItem: Int32?
    public var itemCount: Int32?
    public var name: String?
    public var showInOutlineForm: Bool?
    public var items: [String]?
    public var autoShowField: Int32?
    public var isAutoSubtotals: Bool?
    public var isIncludeNewItemsInFilter: Bool?
    public var currentPageItem: Int32?
    public var position: Int32?
    public var isAscendSort: Bool?
    public var isAscendShow: Bool?
    public var baseField: Int32?
    public var autoSortField: Int32?
    public var autoShowCount: Int32?
    public var number: Int32?
    public var dragToPage: Bool?
    public var dragToData: Bool?
    public var baseIndex: Int32?
    public var originalItems: [String]?
    public var dragToHide: Bool?
    public var isCalculatedField: Bool?

public enum CodingKeys: String, CodingKey { 
        case pivotItems = "PivotItems"
        case displayName = "DisplayName"
        case numberFormat = "NumberFormat"
        case dragToColumn = "DragToColumn"
        case isAutoShow = "IsAutoShow"
        case isRepeatItemLabels = "IsRepeatItemLabels"
        case dragToRow = "DragToRow"
        case isAutoSort = "IsAutoSort"
        case insertBlankRow = "InsertBlankRow"
        case showSubtotalAtTop = "ShowSubtotalAtTop"
        case showCompact = "ShowCompact"
        case function = "Function"
        case isMultipleItemSelectionAllowed = "IsMultipleItemSelectionAllowed"
        case dataDisplayFormat = "DataDisplayFormat"
        case baseItemPosition = "BaseItemPosition"
        case isInsertPageBreaksBetweenItems = "IsInsertPageBreaksBetweenItems"
        case showAllItems = "ShowAllItems"
        case baseItem = "BaseItem"
        case itemCount = "ItemCount"
        case name = "Name"
        case showInOutlineForm = "ShowInOutlineForm"
        case items = "Items"
        case autoShowField = "AutoShowField"
        case isAutoSubtotals = "IsAutoSubtotals"
        case isIncludeNewItemsInFilter = "IsIncludeNewItemsInFilter"
        case currentPageItem = "CurrentPageItem"
        case position = "Position"
        case isAscendSort = "IsAscendSort"
        case isAscendShow = "IsAscendShow"
        case baseField = "BaseField"
        case autoSortField = "AutoSortField"
        case autoShowCount = "AutoShowCount"
        case number = "Number"
        case dragToPage = "DragToPage"
        case dragToData = "DragToData"
        case baseIndex = "BaseIndex"
        case originalItems = "OriginalItems"
        case dragToHide = "DragToHide"
        case isCalculatedField = "IsCalculatedField"
    }

    public init(pivotItems: [PivotItem]?, displayName: String?, numberFormat: String?, dragToColumn: Bool?, isAutoShow: Bool?, isRepeatItemLabels: Bool?, dragToRow: Bool?, isAutoSort: Bool?, insertBlankRow: Bool?, showSubtotalAtTop: Bool?, showCompact: Bool?, function: String?, isMultipleItemSelectionAllowed: Bool?, dataDisplayFormat: String?, baseItemPosition: String?, isInsertPageBreaksBetweenItems: Bool?, showAllItems: Bool?, baseItem: Int32?, itemCount: Int32?, name: String?, showInOutlineForm: Bool?, items: [String]?, autoShowField: Int32?, isAutoSubtotals: Bool?, isIncludeNewItemsInFilter: Bool?, currentPageItem: Int32?, position: Int32?, isAscendSort: Bool?, isAscendShow: Bool?, baseField: Int32?, autoSortField: Int32?, autoShowCount: Int32?, number: Int32?, dragToPage: Bool?, dragToData: Bool?, baseIndex: Int32?, originalItems: [String]?, dragToHide: Bool?, isCalculatedField: Bool?) {
        self.pivotItems = pivotItems
        self.displayName = displayName
        self.numberFormat = numberFormat
        self.dragToColumn = dragToColumn
        self.isAutoShow = isAutoShow
        self.isRepeatItemLabels = isRepeatItemLabels
        self.dragToRow = dragToRow
        self.isAutoSort = isAutoSort
        self.insertBlankRow = insertBlankRow
        self.showSubtotalAtTop = showSubtotalAtTop
        self.showCompact = showCompact
        self.function = function
        self.isMultipleItemSelectionAllowed = isMultipleItemSelectionAllowed
        self.dataDisplayFormat = dataDisplayFormat
        self.baseItemPosition = baseItemPosition
        self.isInsertPageBreaksBetweenItems = isInsertPageBreaksBetweenItems
        self.showAllItems = showAllItems
        self.baseItem = baseItem
        self.itemCount = itemCount
        self.name = name
        self.showInOutlineForm = showInOutlineForm
        self.items = items
        self.autoShowField = autoShowField
        self.isAutoSubtotals = isAutoSubtotals
        self.isIncludeNewItemsInFilter = isIncludeNewItemsInFilter
        self.currentPageItem = currentPageItem
        self.position = position
        self.isAscendSort = isAscendSort
        self.isAscendShow = isAscendShow
        self.baseField = baseField
        self.autoSortField = autoSortField
        self.autoShowCount = autoShowCount
        self.number = number
        self.dragToPage = dragToPage
        self.dragToData = dragToData
        self.baseIndex = baseIndex
        self.originalItems = originalItems
        self.dragToHide = dragToHide
        self.isCalculatedField = isCalculatedField
    }


}

