/// <reference path="viewModel.js" />

(function (lightSwitchApplication) {

    var $element = document.createElement("div");

    lightSwitchApplication.AddEditFileField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.AddEditFileField,
            value: lightSwitchApplication.AddEditFileField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.AddEditFileField,
            value: lightSwitchApplication.FileField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileField,
            value: String
        },
        Position: {
            _$class: msls.ContentItem,
            _$name: "Position",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileField,
            value: Number
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileSection
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FileSection",
            screen: lightSwitchApplication.AddEditFileField,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFileField, {
        /// <field>
        /// Called when a new AddEditFileField screen is created.
        /// <br/>created(msls.application.AddEditFileField screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFileField],
        /// <field>
        /// Called before changes on an active AddEditFileField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFileField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFileField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("left"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the Position content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Position_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("Position"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("right"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("FileSection"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileField().findContentItem("RowTemplate"); }]
    });

    lightSwitchApplication.AddEditReconField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.AddEditReconField,
            value: lightSwitchApplication.AddEditReconField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.AddEditReconField,
            value: lightSwitchApplication.ReconField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconField
        },
        ReconProcessStep: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessStep",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconProcessStep
        },
        ReconProcessStep1: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessStep1",
            _$parentName: "ReconProcessStep",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        FieldType: {
            _$class: msls.ContentItem,
            _$name: "FieldType",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FieldType
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FieldType",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        SystemField: {
            _$class: msls.ContentItem,
            _$name: "SystemField",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.SystemField
        },
        RowTemplate3: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate3",
            _$parentName: "SystemField",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.SystemField
        },
        FieldType1: {
            _$class: msls.ContentItem,
            _$name: "FieldType1",
            _$parentName: "RowTemplate3",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.FieldType
        },
        TableSchema: {
            _$class: msls.ContentItem,
            _$name: "TableSchema",
            _$parentName: "RowTemplate3",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        TableName: {
            _$class: msls.ContentItem,
            _$name: "TableName",
            _$parentName: "RowTemplate3",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "RowTemplate3",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        FileField: {
            _$class: msls.ContentItem,
            _$name: "FileField",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FileField
        },
        RowTemplate1: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate1",
            _$parentName: "FileField",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "RowTemplate1",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileSection
        },
        StagingTableSchema: {
            _$class: msls.ContentItem,
            _$name: "StagingTableSchema",
            _$parentName: "FileSection",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableName: {
            _$class: msls.ContentItem,
            _$name: "StagingTableName",
            _$parentName: "FileSection",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        ColumnName1: {
            _$class: msls.ContentItem,
            _$name: "ColumnName1",
            _$parentName: "RowTemplate1",
            screen: lightSwitchApplication.AddEditReconField,
            data: lightSwitchApplication.FileField,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconField, {
        /// <field>
        /// Called when a new AddEditReconField screen is created.
        /// <br/>created(msls.application.AddEditReconField screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconField],
        /// <field>
        /// Called before changes on an active AddEditReconField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("left"); }],
        /// <field>
        /// Called after the ReconProcessStep content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessStep_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("ReconProcessStep"); }],
        /// <field>
        /// Called after the ReconProcessStep1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessStep1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("ReconProcessStep1"); }],
        /// <field>
        /// Called after the FieldType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("FieldType"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the SystemField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SystemField_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("SystemField"); }],
        /// <field>
        /// Called after the RowTemplate3 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate3_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("RowTemplate3"); }],
        /// <field>
        /// Called after the FieldType1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("FieldType1"); }],
        /// <field>
        /// Called after the TableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableSchema_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("TableSchema"); }],
        /// <field>
        /// Called after the TableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableName_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("TableName"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the FileField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileField_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("FileField"); }],
        /// <field>
        /// Called after the RowTemplate1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("RowTemplate1"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("FileSection"); }],
        /// <field>
        /// Called after the StagingTableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableSchema_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("StagingTableSchema"); }],
        /// <field>
        /// Called after the StagingTableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableName_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("StagingTableName"); }],
        /// <field>
        /// Called after the ColumnName1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconField().findContentItem("ColumnName1"); }]
    });

    lightSwitchApplication.AddEditSystemField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditSystemField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.AddEditSystemField,
            value: lightSwitchApplication.AddEditSystemField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.AddEditSystemField,
            value: lightSwitchApplication.SystemField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.SystemField
        },
        FieldType: {
            _$class: msls.ContentItem,
            _$name: "FieldType",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.FieldType
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FieldType",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        TableSchema: {
            _$class: msls.ContentItem,
            _$name: "TableSchema",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        TableName: {
            _$class: msls.ContentItem,
            _$name: "TableName",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditSystemField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditSystemField, {
        /// <field>
        /// Called when a new AddEditSystemField screen is created.
        /// <br/>created(msls.application.AddEditSystemField screen)
        /// </field>
        created: [lightSwitchApplication.AddEditSystemField],
        /// <field>
        /// Called before changes on an active AddEditSystemField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditSystemField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditSystemField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("left"); }],
        /// <field>
        /// Called after the FieldType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("FieldType"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the TableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableSchema_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("TableSchema"); }],
        /// <field>
        /// Called after the TableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableName_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("TableName"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.AddEditSystemField().findContentItem("ColumnName"); }]
    });

    lightSwitchApplication.BrowseFileFields.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileFields
        },
        FileFieldList: {
            _$class: msls.ContentItem,
            _$name: "FileFieldList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.BrowseFileFields,
            value: lightSwitchApplication.BrowseFileFields
        },
        FileFields: {
            _$class: msls.ContentItem,
            _$name: "FileFields",
            _$parentName: "FileFieldList",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.BrowseFileFields,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFileFields,
                _$entry: {
                    elementType: lightSwitchApplication.FileField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileFields",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.FileField,
            value: String
        },
        Position: {
            _$class: msls.ContentItem,
            _$name: "Position",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.FileField,
            value: Number
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileFields,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileSection
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileFields
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFileFields, {
        /// <field>
        /// Called when a new BrowseFileFields screen is created.
        /// <br/>created(msls.application.BrowseFileFields screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFileFields],
        /// <field>
        /// Called before changes on an active BrowseFileFields screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFileFields screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFileFields],
        /// <field>
        /// Called after the FileFieldList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileFieldList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("FileFieldList"); }],
        /// <field>
        /// Called after the FileFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileFields_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("FileFields"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("rows"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the Position content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Position_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("Position"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileFields().findContentItem("FileSection"); }]
    });

    lightSwitchApplication.BrowseReconFields.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconFields
        },
        ReconFieldList: {
            _$class: msls.ContentItem,
            _$name: "ReconFieldList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconFields,
            data: lightSwitchApplication.BrowseReconFields,
            value: lightSwitchApplication.BrowseReconFields
        },
        ReconFields: {
            _$class: msls.ContentItem,
            _$name: "ReconFields",
            _$parentName: "ReconFieldList",
            screen: lightSwitchApplication.BrowseReconFields,
            data: lightSwitchApplication.BrowseReconFields,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconFields,
                _$entry: {
                    elementType: lightSwitchApplication.ReconField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconFields",
            screen: lightSwitchApplication.BrowseReconFields,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconField
        },
        FieldType: {
            _$class: msls.ContentItem,
            _$name: "FieldType",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconFields,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FieldType
        },
        FileField: {
            _$class: msls.ContentItem,
            _$name: "FileField",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconFields,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FileField
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconFields
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconFields, {
        /// <field>
        /// Called when a new BrowseReconFields screen is created.
        /// <br/>created(msls.application.BrowseReconFields screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconFields],
        /// <field>
        /// Called before changes on an active BrowseReconFields screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconFields screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconFields],
        /// <field>
        /// Called after the ReconFieldList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconFieldList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconFields().findContentItem("ReconFieldList"); }],
        /// <field>
        /// Called after the ReconFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconFields_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconFields().findContentItem("ReconFields"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconFields().findContentItem("rows"); }],
        /// <field>
        /// Called after the FieldType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconFields().findContentItem("FieldType"); }],
        /// <field>
        /// Called after the FileField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileField_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconFields().findContentItem("FileField"); }]
    });

    lightSwitchApplication.BrowseSystemFields.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSystemFields
        },
        FieldList: {
            _$class: msls.ContentItem,
            _$name: "FieldList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.BrowseSystemFields,
            value: lightSwitchApplication.BrowseSystemFields
        },
        SystemFields: {
            _$class: msls.ContentItem,
            _$name: "SystemFields",
            _$parentName: "FieldList",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.BrowseSystemFields,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseSystemFields,
                _$entry: {
                    elementType: lightSwitchApplication.SystemField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "SystemFields",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.SystemField
        },
        TableSchema: {
            _$class: msls.ContentItem,
            _$name: "TableSchema",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        TableName: {
            _$class: msls.ContentItem,
            _$name: "TableName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSystemFields,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSystemFields
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseSystemFields, {
        /// <field>
        /// Called when a new BrowseSystemFields screen is created.
        /// <br/>created(msls.application.BrowseSystemFields screen)
        /// </field>
        created: [lightSwitchApplication.BrowseSystemFields],
        /// <field>
        /// Called before changes on an active BrowseSystemFields screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseSystemFields screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseSystemFields],
        /// <field>
        /// Called after the FieldList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldList_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("FieldList"); }],
        /// <field>
        /// Called after the SystemFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SystemFields_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("SystemFields"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("rows"); }],
        /// <field>
        /// Called after the TableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableSchema_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("TableSchema"); }],
        /// <field>
        /// Called after the TableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableName_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("TableName"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.BrowseSystemFields().findContentItem("ColumnName"); }]
    });

    lightSwitchApplication.ViewFileField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ViewFileField,
            value: lightSwitchApplication.ViewFileField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ViewFileField,
            value: lightSwitchApplication.FileField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.FileField,
            value: String
        },
        Position: {
            _$class: msls.ContentItem,
            _$name: "Position",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.FileField,
            value: Number
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileSection
        },
        ImportFileField_ReconFields: {
            _$class: msls.ContentItem,
            _$name: "ImportFileField_ReconFields",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ViewFileField,
            value: lightSwitchApplication.ViewFileField
        },
        ImportFileField_ReconFields1: {
            _$class: msls.ContentItem,
            _$name: "ImportFileField_ReconFields1",
            _$parentName: "ImportFileField_ReconFields",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ViewFileField,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.ViewFileField,
                _$entry: {
                    elementType: lightSwitchApplication.ImportFileField_ReconField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ImportFileField_ReconFields1",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ImportFileField_ReconField,
            value: lightSwitchApplication.ImportFileField_ReconField
        },
        sys_CreatedBy: {
            _$class: msls.ContentItem,
            _$name: "sys_CreatedBy",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ImportFileField_ReconField,
            value: String
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ImportFileField_ReconField,
            value: Number
        },
        ReconField: {
            _$class: msls.ContentItem,
            _$name: "ReconField",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileField,
            data: lightSwitchApplication.ImportFileField_ReconField,
            value: lightSwitchApplication.ReconField
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFileField, {
        /// <field>
        /// Called when a new ViewFileField screen is created.
        /// <br/>created(msls.application.ViewFileField screen)
        /// </field>
        created: [lightSwitchApplication.ViewFileField],
        /// <field>
        /// Called before changes on an active ViewFileField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFileField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFileField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("left"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the Position content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Position_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("Position"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("right"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("FileSection"); }],
        /// <field>
        /// Called after the ImportFileField_ReconFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportFileField_ReconFields_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("ImportFileField_ReconFields"); }],
        /// <field>
        /// Called after the ImportFileField_ReconFields1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportFileField_ReconFields1_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("ImportFileField_ReconFields1"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("rows"); }],
        /// <field>
        /// Called after the sys_CreatedBy content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_CreatedBy_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("sys_CreatedBy"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("ID"); }],
        /// <field>
        /// Called after the ReconField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconField_postRender: [$element, function () { return new lightSwitchApplication.ViewFileField().findContentItem("ReconField"); }]
    });

    lightSwitchApplication.ViewReconField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ViewReconField,
            value: lightSwitchApplication.ViewReconField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ViewReconField,
            value: lightSwitchApplication.ReconField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconField
        },
        FieldType: {
            _$class: msls.ContentItem,
            _$name: "FieldType",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FieldType
        },
        FileField: {
            _$class: msls.ContentItem,
            _$name: "FileField",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FileField
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconField
        },
        SystemField: {
            _$class: msls.ContentItem,
            _$name: "SystemField",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.SystemField
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconField, {
        /// <field>
        /// Called when a new ViewReconField screen is created.
        /// <br/>created(msls.application.ViewReconField screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconField],
        /// <field>
        /// Called before changes on an active ViewReconField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("left"); }],
        /// <field>
        /// Called after the FieldType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("FieldType"); }],
        /// <field>
        /// Called after the FileField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileField_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("FileField"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("right"); }],
        /// <field>
        /// Called after the SystemField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SystemField_postRender: [$element, function () { return new lightSwitchApplication.ViewReconField().findContentItem("SystemField"); }]
    });

    lightSwitchApplication.ViewSystemField.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewSystemField
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ViewSystemField,
            value: lightSwitchApplication.ViewSystemField
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ViewSystemField,
            value: lightSwitchApplication.SystemField
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.SystemField
        },
        TableSchema: {
            _$class: msls.ContentItem,
            _$name: "TableSchema",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        TableName: {
            _$class: msls.ContentItem,
            _$name: "TableName",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.SystemField
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: String
        },
        FieldType: {
            _$class: msls.ContentItem,
            _$name: "FieldType",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.SystemField,
            value: lightSwitchApplication.FieldType
        },
        ReconFields: {
            _$class: msls.ContentItem,
            _$name: "ReconFields",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ViewSystemField,
            value: lightSwitchApplication.ViewSystemField
        },
        ReconFields1: {
            _$class: msls.ContentItem,
            _$name: "ReconFields1",
            _$parentName: "ReconFields",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ViewSystemField,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.ViewSystemField,
                _$entry: {
                    elementType: lightSwitchApplication.ReconField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconFields1",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.ReconField
        },
        sys_CreatedBy: {
            _$class: msls.ContentItem,
            _$name: "sys_CreatedBy",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ReconField,
            value: String
        },
        FieldType1: {
            _$class: msls.ContentItem,
            _$name: "FieldType1",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FieldType
        },
        FileField: {
            _$class: msls.ContentItem,
            _$name: "FileField",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewSystemField,
            data: lightSwitchApplication.ReconField,
            value: lightSwitchApplication.FileField
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewSystemField
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewSystemField, {
        /// <field>
        /// Called when a new ViewSystemField screen is created.
        /// <br/>created(msls.application.ViewSystemField screen)
        /// </field>
        created: [lightSwitchApplication.ViewSystemField],
        /// <field>
        /// Called before changes on an active ViewSystemField screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewSystemField screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewSystemField],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("left"); }],
        /// <field>
        /// Called after the TableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableSchema_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("TableSchema"); }],
        /// <field>
        /// Called after the TableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TableName_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("TableName"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("right"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the FieldType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("FieldType"); }],
        /// <field>
        /// Called after the ReconFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconFields_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("ReconFields"); }],
        /// <field>
        /// Called after the ReconFields1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconFields1_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("ReconFields1"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("rows"); }],
        /// <field>
        /// Called after the sys_CreatedBy content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_CreatedBy_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("sys_CreatedBy"); }],
        /// <field>
        /// Called after the FieldType1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldType1_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("FieldType1"); }],
        /// <field>
        /// Called after the FileField content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileField_postRender: [$element, function () { return new lightSwitchApplication.ViewSystemField().findContentItem("FileField"); }]
    });

    lightSwitchApplication.AddEditFileDefinition.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileDefinition
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.AddEditFileDefinition,
            value: lightSwitchApplication.AddEditFileDefinition
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.AddEditFileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        FileType: {
            _$class: msls.ContentItem,
            _$name: "FileType",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileType
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FileType",
            screen: lightSwitchApplication.AddEditFileDefinition,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileDefinition
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFileDefinition, {
        /// <field>
        /// Called when a new AddEditFileDefinition screen is created.
        /// <br/>created(msls.application.AddEditFileDefinition screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFileDefinition],
        /// <field>
        /// Called before changes on an active AddEditFileDefinition screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFileDefinition screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFileDefinition],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("Name"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("right"); }],
        /// <field>
        /// Called after the FileType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileType_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("FileType"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileDefinition().findContentItem("RowTemplate"); }]
    });

    lightSwitchApplication.AddEditFileSection.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileSection
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.AddEditFileSection,
            value: lightSwitchApplication.AddEditFileSection
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.AddEditFileSection,
            value: lightSwitchApplication.FileSection
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableSchema: {
            _$class: msls.ContentItem,
            _$name: "StagingTableSchema",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableName: {
            _$class: msls.ContentItem,
            _$name: "StagingTableName",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StartRow: {
            _$class: msls.ContentItem,
            _$name: "StartRow",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        StartColumn: {
            _$class: msls.ContentItem,
            _$name: "StartColumn",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        NumRows: {
            _$class: msls.ContentItem,
            _$name: "NumRows",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        NumColumns: {
            _$class: msls.ContentItem,
            _$name: "NumColumns",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        Pivot: {
            _$class: msls.ContentItem,
            _$name: "Pivot",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Boolean
        },
        HeaderRow: {
            _$class: msls.ContentItem,
            _$name: "HeaderRow",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: Boolean
        },
        FileDefinition: {
            _$class: msls.ContentItem,
            _$name: "FileDefinition",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileDefinition
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FileDefinition",
            screen: lightSwitchApplication.AddEditFileSection,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileSection
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFileSection, {
        /// <field>
        /// Called when a new AddEditFileSection screen is created.
        /// <br/>created(msls.application.AddEditFileSection screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFileSection],
        /// <field>
        /// Called before changes on an active AddEditFileSection screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFileSection screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFileSection],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("Name"); }],
        /// <field>
        /// Called after the StagingTableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableSchema_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("StagingTableSchema"); }],
        /// <field>
        /// Called after the StagingTableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableName_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("StagingTableName"); }],
        /// <field>
        /// Called after the StartRow content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StartRow_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("StartRow"); }],
        /// <field>
        /// Called after the StartColumn content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StartColumn_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("StartColumn"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("right"); }],
        /// <field>
        /// Called after the NumRows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        NumRows_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("NumRows"); }],
        /// <field>
        /// Called after the NumColumns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        NumColumns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("NumColumns"); }],
        /// <field>
        /// Called after the Pivot content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Pivot_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("Pivot"); }],
        /// <field>
        /// Called after the HeaderRow content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        HeaderRow_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("HeaderRow"); }],
        /// <field>
        /// Called after the FileDefinition content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinition_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("FileDefinition"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileSection().findContentItem("RowTemplate"); }]
    });

    lightSwitchApplication.BrowseFileDefinitions.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileDefinitions
        },
        FileDefinitionList: {
            _$class: msls.ContentItem,
            _$name: "FileDefinitionList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFileDefinitions,
            data: lightSwitchApplication.BrowseFileDefinitions,
            value: lightSwitchApplication.BrowseFileDefinitions
        },
        FileDefinitions: {
            _$class: msls.ContentItem,
            _$name: "FileDefinitions",
            _$parentName: "FileDefinitionList",
            screen: lightSwitchApplication.BrowseFileDefinitions,
            data: lightSwitchApplication.BrowseFileDefinitions,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFileDefinitions,
                _$entry: {
                    elementType: lightSwitchApplication.FileDefinition
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileDefinitions",
            screen: lightSwitchApplication.BrowseFileDefinitions,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileDefinitions,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileDefinitions,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileDefinitions
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFileDefinitions, {
        /// <field>
        /// Called when a new BrowseFileDefinitions screen is created.
        /// <br/>created(msls.application.BrowseFileDefinitions screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFileDefinitions],
        /// <field>
        /// Called before changes on an active BrowseFileDefinitions screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFileDefinitions screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFileDefinitions],
        /// <field>
        /// Called after the FileDefinitionList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinitionList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileDefinitions().findContentItem("FileDefinitionList"); }],
        /// <field>
        /// Called after the FileDefinitions content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinitions_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileDefinitions().findContentItem("FileDefinitions"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileDefinitions().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileDefinitions().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileDefinitions().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseFileSections.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileSections
        },
        FileSectionList: {
            _$class: msls.ContentItem,
            _$name: "FileSectionList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.BrowseFileSections,
            value: lightSwitchApplication.BrowseFileSections
        },
        FileSections: {
            _$class: msls.ContentItem,
            _$name: "FileSections",
            _$parentName: "FileSectionList",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.BrowseFileSections,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFileSections,
                _$entry: {
                    elementType: lightSwitchApplication.FileSection
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileSections",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableSchema: {
            _$class: msls.ContentItem,
            _$name: "StagingTableSchema",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableName: {
            _$class: msls.ContentItem,
            _$name: "StagingTableName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileSections,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileSections
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFileSections, {
        /// <field>
        /// Called when a new BrowseFileSections screen is created.
        /// <br/>created(msls.application.BrowseFileSections screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFileSections],
        /// <field>
        /// Called before changes on an active BrowseFileSections screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFileSections screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFileSections],
        /// <field>
        /// Called after the FileSectionList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSectionList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("FileSectionList"); }],
        /// <field>
        /// Called after the FileSections content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSections_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("FileSections"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("Name"); }],
        /// <field>
        /// Called after the StagingTableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableSchema_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("StagingTableSchema"); }],
        /// <field>
        /// Called after the StagingTableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableName_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileSections().findContentItem("StagingTableName"); }]
    });

    lightSwitchApplication.ViewFileDefinition.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileDefinition
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.ViewFileDefinition,
            value: lightSwitchApplication.ViewFileDefinition
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.ViewFileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        FileType: {
            _$class: msls.ContentItem,
            _$name: "FileType",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileType
        },
        FileSections: {
            _$class: msls.ContentItem,
            _$name: "FileSections",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.ViewFileDefinition,
            value: lightSwitchApplication.ViewFileDefinition
        },
        FileSections1: {
            _$class: msls.ContentItem,
            _$name: "FileSections1",
            _$parentName: "FileSections",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.ViewFileDefinition,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.ViewFileDefinition,
                _$entry: {
                    elementType: lightSwitchApplication.FileSection
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileSections1",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Code1: {
            _$class: msls.ContentItem,
            _$name: "Code1",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Name1: {
            _$class: msls.ContentItem,
            _$name: "Name1",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableSchema: {
            _$class: msls.ContentItem,
            _$name: "StagingTableSchema",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileDefinition,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileDefinition
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFileDefinition, {
        /// <field>
        /// Called when a new ViewFileDefinition screen is created.
        /// <br/>created(msls.application.ViewFileDefinition screen)
        /// </field>
        created: [lightSwitchApplication.ViewFileDefinition],
        /// <field>
        /// Called before changes on an active ViewFileDefinition screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFileDefinition screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFileDefinition],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("Name"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("right"); }],
        /// <field>
        /// Called after the FileType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileType_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("FileType"); }],
        /// <field>
        /// Called after the FileSections content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSections_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("FileSections"); }],
        /// <field>
        /// Called after the FileSections1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSections1_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("FileSections1"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code1_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("Code1"); }],
        /// <field>
        /// Called after the Name1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name1_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("Name1"); }],
        /// <field>
        /// Called after the StagingTableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableSchema_postRender: [$element, function () { return new lightSwitchApplication.ViewFileDefinition().findContentItem("StagingTableSchema"); }]
    });

    lightSwitchApplication.ViewFileSection.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileSection
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.ViewFileSection,
            value: lightSwitchApplication.ViewFileSection
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.ViewFileSection,
            value: lightSwitchApplication.FileSection
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableSchema: {
            _$class: msls.ContentItem,
            _$name: "StagingTableSchema",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StagingTableName: {
            _$class: msls.ContentItem,
            _$name: "StagingTableName",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: String
        },
        StartRow: {
            _$class: msls.ContentItem,
            _$name: "StartRow",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        StartColumn: {
            _$class: msls.ContentItem,
            _$name: "StartColumn",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        NumRows: {
            _$class: msls.ContentItem,
            _$name: "NumRows",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        NumColumns: {
            _$class: msls.ContentItem,
            _$name: "NumColumns",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Number
        },
        Pivot: {
            _$class: msls.ContentItem,
            _$name: "Pivot",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Boolean
        },
        HeaderRow: {
            _$class: msls.ContentItem,
            _$name: "HeaderRow",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: Boolean
        },
        FileDefinition: {
            _$class: msls.ContentItem,
            _$name: "FileDefinition",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileDefinition
        },
        FileFields: {
            _$class: msls.ContentItem,
            _$name: "FileFields",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.ViewFileSection,
            value: lightSwitchApplication.ViewFileSection
        },
        FileFields1: {
            _$class: msls.ContentItem,
            _$name: "FileFields1",
            _$parentName: "FileFields",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.ViewFileSection,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.ViewFileSection,
                _$entry: {
                    elementType: lightSwitchApplication.FileField
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileFields1",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileField,
            value: lightSwitchApplication.FileField
        },
        ColumnName: {
            _$class: msls.ContentItem,
            _$name: "ColumnName",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileField,
            value: String
        },
        Position: {
            _$class: msls.ContentItem,
            _$name: "Position",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewFileSection,
            data: lightSwitchApplication.FileField,
            value: Number
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileSection
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFileSection, {
        /// <field>
        /// Called when a new ViewFileSection screen is created.
        /// <br/>created(msls.application.ViewFileSection screen)
        /// </field>
        created: [lightSwitchApplication.ViewFileSection],
        /// <field>
        /// Called before changes on an active ViewFileSection screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFileSection screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFileSection],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("Name"); }],
        /// <field>
        /// Called after the StagingTableSchema content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableSchema_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("StagingTableSchema"); }],
        /// <field>
        /// Called after the StagingTableName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StagingTableName_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("StagingTableName"); }],
        /// <field>
        /// Called after the StartRow content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StartRow_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("StartRow"); }],
        /// <field>
        /// Called after the StartColumn content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        StartColumn_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("StartColumn"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("right"); }],
        /// <field>
        /// Called after the NumRows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        NumRows_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("NumRows"); }],
        /// <field>
        /// Called after the NumColumns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        NumColumns_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("NumColumns"); }],
        /// <field>
        /// Called after the Pivot content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Pivot_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("Pivot"); }],
        /// <field>
        /// Called after the HeaderRow content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        HeaderRow_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("HeaderRow"); }],
        /// <field>
        /// Called after the FileDefinition content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinition_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("FileDefinition"); }],
        /// <field>
        /// Called after the FileFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileFields_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("FileFields"); }],
        /// <field>
        /// Called after the FileFields1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileFields1_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("FileFields1"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("rows"); }],
        /// <field>
        /// Called after the ColumnName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ColumnName_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("ColumnName"); }],
        /// <field>
        /// Called after the Position content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Position_postRender: [$element, function () { return new lightSwitchApplication.ViewFileSection().findContentItem("Position"); }]
    });

    lightSwitchApplication.AddEditReconProcess.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconProcess
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.AddEditReconProcess,
            value: lightSwitchApplication.AddEditReconProcess
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.AddEditReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconProcess
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconProcess, {
        /// <field>
        /// Called when a new AddEditReconProcess screen is created.
        /// <br/>created(msls.application.AddEditReconProcess screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconProcess],
        /// <field>
        /// Called before changes on an active AddEditReconProcess screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconProcess screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconProcess],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcess().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditReconProcessStep.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconProcessStep
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.AddEditReconProcessStep,
            value: lightSwitchApplication.AddEditReconProcessStep
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.AddEditReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        ReconProcess: {
            _$class: msls.ContentItem,
            _$name: "ReconProcess",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcess
        },
        RowTemplate2: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate2",
            _$parentName: "ReconProcess",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        ReconType: {
            _$class: msls.ContentItem,
            _$name: "ReconType",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconType
        },
        RowTemplate3: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate3",
            _$parentName: "ReconType",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Order: {
            _$class: msls.ContentItem,
            _$name: "Order",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: Number
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FileSection",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        FileSection1: {
            _$class: msls.ContentItem,
            _$name: "FileSection1",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        RowTemplate1: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate1",
            _$parentName: "FileSection1",
            screen: lightSwitchApplication.AddEditReconProcessStep,
            data: lightSwitchApplication.FileSection,
            value: lightSwitchApplication.FileSection
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconProcessStep
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconProcessStep, {
        /// <field>
        /// Called when a new AddEditReconProcessStep screen is created.
        /// <br/>created(msls.application.AddEditReconProcessStep screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconProcessStep],
        /// <field>
        /// Called before changes on an active AddEditReconProcessStep screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconProcessStep screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconProcessStep],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("left"); }],
        /// <field>
        /// Called after the ReconProcess content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcess_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("ReconProcess"); }],
        /// <field>
        /// Called after the RowTemplate2 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate2_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("RowTemplate2"); }],
        /// <field>
        /// Called after the ReconType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconType_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("ReconType"); }],
        /// <field>
        /// Called after the RowTemplate3 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate3_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("RowTemplate3"); }],
        /// <field>
        /// Called after the Order content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Order_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("Order"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("Name"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("FileSection"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the FileSection1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("FileSection1"); }],
        /// <field>
        /// Called after the RowTemplate1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate1_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconProcessStep().findContentItem("RowTemplate1"); }]
    });

    lightSwitchApplication.BrowseReconProcesses.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconProcesses
        },
        ReconProcessList: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconProcesses,
            data: lightSwitchApplication.BrowseReconProcesses,
            value: lightSwitchApplication.BrowseReconProcesses
        },
        ReconProcesses: {
            _$class: msls.ContentItem,
            _$name: "ReconProcesses",
            _$parentName: "ReconProcessList",
            screen: lightSwitchApplication.BrowseReconProcesses,
            data: lightSwitchApplication.BrowseReconProcesses,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconProcesses,
                _$entry: {
                    elementType: lightSwitchApplication.ReconProcess
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconProcesses",
            screen: lightSwitchApplication.BrowseReconProcesses,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconProcesses,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconProcesses,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconProcesses
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconProcesses, {
        /// <field>
        /// Called when a new BrowseReconProcesses screen is created.
        /// <br/>created(msls.application.BrowseReconProcesses screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconProcesses],
        /// <field>
        /// Called before changes on an active BrowseReconProcesses screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconProcesses screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconProcesses],
        /// <field>
        /// Called after the ReconProcessList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcesses().findContentItem("ReconProcessList"); }],
        /// <field>
        /// Called after the ReconProcesses content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcesses_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcesses().findContentItem("ReconProcesses"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcesses().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcesses().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcesses().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseReconProcessSteps.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconProcessSteps
        },
        ReconProcessStepList: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessStepList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.BrowseReconProcessSteps,
            value: lightSwitchApplication.BrowseReconProcessSteps
        },
        ReconProcessSteps: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessSteps",
            _$parentName: "ReconProcessStepList",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.BrowseReconProcessSteps,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconProcessSteps,
                _$entry: {
                    elementType: lightSwitchApplication.ReconProcessStep
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconProcessSteps",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconProcessSteps,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconProcessSteps
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconProcessSteps, {
        /// <field>
        /// Called when a new BrowseReconProcessSteps screen is created.
        /// <br/>created(msls.application.BrowseReconProcessSteps screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconProcessSteps],
        /// <field>
        /// Called before changes on an active BrowseReconProcessSteps screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconProcessSteps screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconProcessSteps],
        /// <field>
        /// Called after the ReconProcessStepList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessStepList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("ReconProcessStepList"); }],
        /// <field>
        /// Called after the ReconProcessSteps content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessSteps_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("ReconProcessSteps"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("Name"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconProcessSteps().findContentItem("FileSection"); }]
    });

    lightSwitchApplication.ViewReconProcess.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconProcess
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ViewReconProcess,
            value: lightSwitchApplication.ViewReconProcess
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ViewReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: lightSwitchApplication.ReconProcess
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcess,
            value: String
        },
        ReconProcessSteps: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessSteps",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ViewReconProcess,
            value: lightSwitchApplication.ViewReconProcess
        },
        ReconProcessSteps1: {
            _$class: msls.ContentItem,
            _$name: "ReconProcessSteps1",
            _$parentName: "ReconProcessSteps",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ViewReconProcess,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.ViewReconProcess,
                _$entry: {
                    elementType: lightSwitchApplication.ReconProcessStep
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconProcessSteps1",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        Code1: {
            _$class: msls.ContentItem,
            _$name: "Code1",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        Name1: {
            _$class: msls.ContentItem,
            _$name: "Name1",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconProcess
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconProcess, {
        /// <field>
        /// Called when a new ViewReconProcess screen is created.
        /// <br/>created(msls.application.ViewReconProcess screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconProcess],
        /// <field>
        /// Called before changes on an active ViewReconProcess screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconProcess screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconProcess],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Name"); }],
        /// <field>
        /// Called after the ReconProcessSteps content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessSteps_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("ReconProcessSteps"); }],
        /// <field>
        /// Called after the ReconProcessSteps1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcessSteps1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("ReconProcessSteps1"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Code1"); }],
        /// <field>
        /// Called after the Name1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Name1"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("FileSection"); }]
    });

    lightSwitchApplication.ViewReconProcessStep.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconProcessStep
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ViewReconProcessStep,
            value: lightSwitchApplication.ViewReconProcessStep
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ViewReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: String
        },
        FileSection: {
            _$class: msls.ContentItem,
            _$name: "FileSection",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcessStep
        },
        FileSection1: {
            _$class: msls.ContentItem,
            _$name: "FileSection1",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.FileSection
        },
        ReconProcess: {
            _$class: msls.ContentItem,
            _$name: "ReconProcess",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconProcess
        },
        ReconType: {
            _$class: msls.ContentItem,
            _$name: "ReconType",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconProcessStep,
            data: lightSwitchApplication.ReconProcessStep,
            value: lightSwitchApplication.ReconType
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconProcessStep
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconProcessStep, {
        /// <field>
        /// Called when a new ViewReconProcessStep screen is created.
        /// <br/>created(msls.application.ViewReconProcessStep screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconProcessStep],
        /// <field>
        /// Called before changes on an active ViewReconProcessStep screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconProcessStep screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconProcessStep],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("Name"); }],
        /// <field>
        /// Called after the FileSection content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("FileSection"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("right"); }],
        /// <field>
        /// Called after the FileSection1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileSection1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("FileSection1"); }],
        /// <field>
        /// Called after the ReconProcess content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcess_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("ReconProcess"); }],
        /// <field>
        /// Called after the ReconType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconType_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcessStep().findContentItem("ReconType"); }]
    });

    lightSwitchApplication.AddEditReconItemStatu.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconItemStatu
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.AddEditReconItemStatu,
            value: lightSwitchApplication.AddEditReconItemStatu
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.AddEditReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: Number
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconItemStatu
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconItemStatu, {
        /// <field>
        /// Called when a new AddEditReconItemStatu screen is created.
        /// <br/>created(msls.application.AddEditReconItemStatu screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconItemStatu],
        /// <field>
        /// Called before changes on an active AddEditReconItemStatu screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconItemStatu screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconItemStatu],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("left"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("ID"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconItemStatu().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditReconStatus.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconStatus
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.AddEditReconStatus,
            value: lightSwitchApplication.AddEditReconStatus
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.AddEditReconStatus,
            value: lightSwitchApplication.ReconStatu
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: lightSwitchApplication.ReconStatu
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: Number
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: lightSwitchApplication.ReconStatu
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconStatus
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconStatus, {
        /// <field>
        /// Called when a new AddEditReconStatus screen is created.
        /// <br/>created(msls.application.AddEditReconStatus screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconStatus],
        /// <field>
        /// Called before changes on an active AddEditReconStatus screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconStatus screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconStatus],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("left"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("ID"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconStatus().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseReconItemStatus.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconItemStatus
        },
        ReconItemStatuList: {
            _$class: msls.ContentItem,
            _$name: "ReconItemStatuList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.BrowseReconItemStatus,
            value: lightSwitchApplication.BrowseReconItemStatus
        },
        ReconItemStatus: {
            _$class: msls.ContentItem,
            _$name: "ReconItemStatus",
            _$parentName: "ReconItemStatuList",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.BrowseReconItemStatus,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconItemStatus,
                _$entry: {
                    elementType: lightSwitchApplication.ReconItemStatu
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconItemStatus",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.ReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.ReconItemStatu,
            value: Number
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconItemStatus,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconItemStatus
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconItemStatus, {
        /// <field>
        /// Called when a new BrowseReconItemStatus screen is created.
        /// <br/>created(msls.application.BrowseReconItemStatus screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconItemStatus],
        /// <field>
        /// Called before changes on an active BrowseReconItemStatus screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconItemStatus screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconItemStatus],
        /// <field>
        /// Called after the ReconItemStatuList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconItemStatuList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("ReconItemStatuList"); }],
        /// <field>
        /// Called after the ReconItemStatus content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconItemStatus_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("ReconItemStatus"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("Code"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("ID"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconItemStatus().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseReconStatusSet.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconStatusSet
        },
        ReconStatusList: {
            _$class: msls.ContentItem,
            _$name: "ReconStatusList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.BrowseReconStatusSet,
            value: lightSwitchApplication.BrowseReconStatusSet
        },
        ReconStatus: {
            _$class: msls.ContentItem,
            _$name: "ReconStatus",
            _$parentName: "ReconStatusList",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.BrowseReconStatusSet,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconStatusSet,
                _$entry: {
                    elementType: lightSwitchApplication.ReconStatu
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconStatus",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.ReconStatu,
            value: lightSwitchApplication.ReconStatu
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.ReconStatu,
            value: Number
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconStatusSet,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconStatusSet
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconStatusSet, {
        /// <field>
        /// Called when a new BrowseReconStatusSet screen is created.
        /// <br/>created(msls.application.BrowseReconStatusSet screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconStatusSet],
        /// <field>
        /// Called before changes on an active BrowseReconStatusSet screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconStatusSet screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconStatusSet],
        /// <field>
        /// Called after the ReconStatusList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconStatusList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("ReconStatusList"); }],
        /// <field>
        /// Called after the ReconStatus content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconStatus_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("ReconStatus"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("Code"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("ID"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconStatusSet().findContentItem("Name"); }]
    });

    lightSwitchApplication.ViewReconItemStatu.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconItemStatu
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ViewReconItemStatu,
            value: lightSwitchApplication.ViewReconItemStatu
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ViewReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: Number
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: lightSwitchApplication.ReconItemStatu
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconItemStatu,
            data: lightSwitchApplication.ReconItemStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconItemStatu
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconItemStatu, {
        /// <field>
        /// Called when a new ViewReconItemStatu screen is created.
        /// <br/>created(msls.application.ViewReconItemStatu screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconItemStatu],
        /// <field>
        /// Called before changes on an active ViewReconItemStatu screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconItemStatu screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconItemStatu],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("left"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("ID"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconItemStatu().findContentItem("Name"); }]
    });

    lightSwitchApplication.ViewReconStatus.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconStatus
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ViewReconStatus,
            value: lightSwitchApplication.ViewReconStatus
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ViewReconStatus,
            value: lightSwitchApplication.ReconStatu
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: lightSwitchApplication.ReconStatu
        },
        ID: {
            _$class: msls.ContentItem,
            _$name: "ID",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: Number
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: lightSwitchApplication.ReconStatu
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconStatus,
            data: lightSwitchApplication.ReconStatu,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconStatus
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconStatus, {
        /// <field>
        /// Called when a new ViewReconStatus screen is created.
        /// <br/>created(msls.application.ViewReconStatus screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconStatus],
        /// <field>
        /// Called before changes on an active ViewReconStatus screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconStatus screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconStatus],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("left"); }],
        /// <field>
        /// Called after the ID content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ID_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("ID"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconStatus().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditFieldTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFieldTypes
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFieldTypes,
            data: lightSwitchApplication.AddEditFieldTypes,
            value: lightSwitchApplication.AddEditFieldTypes
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFieldTypes,
            data: lightSwitchApplication.AddEditFieldTypes,
            value: lightSwitchApplication.FieldType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFieldTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFieldTypes, {
        /// <field>
        /// Called when a new AddEditFieldTypes screen is created.
        /// <br/>created(msls.application.AddEditFieldTypes screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFieldTypes],
        /// <field>
        /// Called before changes on an active AddEditFieldTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFieldTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFieldTypes],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFieldTypes().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFieldTypes().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFieldTypes().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditFieldTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditFieldTypes().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditFileType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.AddEditFileType,
            value: lightSwitchApplication.AddEditFileType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.AddEditFileType,
            value: lightSwitchApplication.FileType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Extension: {
            _$class: msls.ContentItem,
            _$name: "Extension",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditFileType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditFileType, {
        /// <field>
        /// Called when a new AddEditFileType screen is created.
        /// <br/>created(msls.application.AddEditFileType screen)
        /// </field>
        created: [lightSwitchApplication.AddEditFileType],
        /// <field>
        /// Called before changes on an active AddEditFileType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditFileType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditFileType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("Code"); }],
        /// <field>
        /// Called after the Extension content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Extension_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("Extension"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditFileType().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditReconSourceType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconSourceType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.AddEditReconSourceType,
            value: lightSwitchApplication.AddEditReconSourceType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.AddEditReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconSourceType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconSourceType, {
        /// <field>
        /// Called when a new AddEditReconSourceType screen is created.
        /// <br/>created(msls.application.AddEditReconSourceType screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconSourceType],
        /// <field>
        /// Called before changes on an active AddEditReconSourceType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconSourceType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconSourceType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconSourceType().findContentItem("Name"); }]
    });

    lightSwitchApplication.AddEditReconType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.AddEditReconType,
            value: lightSwitchApplication.AddEditReconType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.AddEditReconType,
            value: lightSwitchApplication.ReconType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.AddEditReconType,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.AddEditReconType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.AddEditReconType, {
        /// <field>
        /// Called when a new AddEditReconType screen is created.
        /// <br/>created(msls.application.AddEditReconType screen)
        /// </field>
        created: [lightSwitchApplication.AddEditReconType],
        /// <field>
        /// Called before changes on an active AddEditReconType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.AddEditReconType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.AddEditReconType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.AddEditReconType().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseFieldTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFieldTypes
        },
        TypesList: {
            _$class: msls.ContentItem,
            _$name: "TypesList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.BrowseFieldTypes,
            value: lightSwitchApplication.BrowseFieldTypes
        },
        FieldTypes: {
            _$class: msls.ContentItem,
            _$name: "FieldTypes",
            _$parentName: "TypesList",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.BrowseFieldTypes,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFieldTypes,
                _$entry: {
                    elementType: lightSwitchApplication.FieldType
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FieldTypes",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        sys_CreatedBy: {
            _$class: msls.ContentItem,
            _$name: "sys_CreatedBy",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFieldTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFieldTypes, {
        /// <field>
        /// Called when a new BrowseFieldTypes screen is created.
        /// <br/>created(msls.application.BrowseFieldTypes screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFieldTypes],
        /// <field>
        /// Called before changes on an active BrowseFieldTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFieldTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFieldTypes],
        /// <field>
        /// Called after the TypesList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TypesList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("TypesList"); }],
        /// <field>
        /// Called after the FieldTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FieldTypes_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("FieldTypes"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("Name"); }],
        /// <field>
        /// Called after the sys_CreatedBy content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_CreatedBy_postRender: [$element, function () { return new lightSwitchApplication.BrowseFieldTypes().findContentItem("sys_CreatedBy"); }]
    });

    lightSwitchApplication.BrowseFileTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileTypes
        },
        FileTypeList: {
            _$class: msls.ContentItem,
            _$name: "FileTypeList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.BrowseFileTypes,
            value: lightSwitchApplication.BrowseFileTypes
        },
        FileTypes: {
            _$class: msls.ContentItem,
            _$name: "FileTypes",
            _$parentName: "FileTypeList",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.BrowseFileTypes,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseFileTypes,
                _$entry: {
                    elementType: lightSwitchApplication.FileType
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "FileTypes",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Extension: {
            _$class: msls.ContentItem,
            _$name: "Extension",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseFileTypes,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseFileTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseFileTypes, {
        /// <field>
        /// Called when a new BrowseFileTypes screen is created.
        /// <br/>created(msls.application.BrowseFileTypes screen)
        /// </field>
        created: [lightSwitchApplication.BrowseFileTypes],
        /// <field>
        /// Called before changes on an active BrowseFileTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseFileTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseFileTypes],
        /// <field>
        /// Called after the FileTypeList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileTypeList_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("FileTypeList"); }],
        /// <field>
        /// Called after the FileTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileTypes_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("FileTypes"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Extension content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Extension_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("Extension"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseFileTypes().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseReconSourceTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconSourceTypes
        },
        ReconSourceTypeList: {
            _$class: msls.ContentItem,
            _$name: "ReconSourceTypeList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconSourceTypes,
            data: lightSwitchApplication.BrowseReconSourceTypes,
            value: lightSwitchApplication.BrowseReconSourceTypes
        },
        ReconSourceTypes: {
            _$class: msls.ContentItem,
            _$name: "ReconSourceTypes",
            _$parentName: "ReconSourceTypeList",
            screen: lightSwitchApplication.BrowseReconSourceTypes,
            data: lightSwitchApplication.BrowseReconSourceTypes,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconSourceTypes,
                _$entry: {
                    elementType: lightSwitchApplication.ReconSourceType
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconSourceTypes",
            screen: lightSwitchApplication.BrowseReconSourceTypes,
            data: lightSwitchApplication.ReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconSourceTypes,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconSourceTypes,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconSourceTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconSourceTypes, {
        /// <field>
        /// Called when a new BrowseReconSourceTypes screen is created.
        /// <br/>created(msls.application.BrowseReconSourceTypes screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconSourceTypes],
        /// <field>
        /// Called before changes on an active BrowseReconSourceTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconSourceTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconSourceTypes],
        /// <field>
        /// Called after the ReconSourceTypeList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconSourceTypeList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconSourceTypes().findContentItem("ReconSourceTypeList"); }],
        /// <field>
        /// Called after the ReconSourceTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconSourceTypes_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconSourceTypes().findContentItem("ReconSourceTypes"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconSourceTypes().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconSourceTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconSourceTypes().findContentItem("Name"); }]
    });

    lightSwitchApplication.BrowseReconTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconTypes
        },
        ReconTypeList: {
            _$class: msls.ContentItem,
            _$name: "ReconTypeList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseReconTypes,
            data: lightSwitchApplication.BrowseReconTypes,
            value: lightSwitchApplication.BrowseReconTypes
        },
        ReconTypes: {
            _$class: msls.ContentItem,
            _$name: "ReconTypes",
            _$parentName: "ReconTypeList",
            screen: lightSwitchApplication.BrowseReconTypes,
            data: lightSwitchApplication.BrowseReconTypes,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseReconTypes,
                _$entry: {
                    elementType: lightSwitchApplication.ReconType
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ReconTypes",
            screen: lightSwitchApplication.BrowseReconTypes,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconTypes,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseReconTypes,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseReconTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseReconTypes, {
        /// <field>
        /// Called when a new BrowseReconTypes screen is created.
        /// <br/>created(msls.application.BrowseReconTypes screen)
        /// </field>
        created: [lightSwitchApplication.BrowseReconTypes],
        /// <field>
        /// Called before changes on an active BrowseReconTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseReconTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseReconTypes],
        /// <field>
        /// Called after the ReconTypeList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconTypeList_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconTypes().findContentItem("ReconTypeList"); }],
        /// <field>
        /// Called after the ReconTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconTypes_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconTypes().findContentItem("ReconTypes"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconTypes().findContentItem("rows"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseReconTypes().findContentItem("Name"); }]
    });

    lightSwitchApplication.ViewFieldTypes.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFieldTypes
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.ViewFieldTypes,
            value: lightSwitchApplication.ViewFieldTypes
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.ViewFieldTypes,
            value: lightSwitchApplication.FieldType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        sys_CreatedBy: {
            _$class: msls.ContentItem,
            _$name: "sys_CreatedBy",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: lightSwitchApplication.FieldType
        },
        sys_CreatedOn: {
            _$class: msls.ContentItem,
            _$name: "sys_CreatedOn",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: Date
        },
        sys_ModifiedBy: {
            _$class: msls.ContentItem,
            _$name: "sys_ModifiedBy",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFieldTypes,
            data: lightSwitchApplication.FieldType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFieldTypes
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFieldTypes, {
        /// <field>
        /// Called when a new ViewFieldTypes screen is created.
        /// <br/>created(msls.application.ViewFieldTypes screen)
        /// </field>
        created: [lightSwitchApplication.ViewFieldTypes],
        /// <field>
        /// Called before changes on an active ViewFieldTypes screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFieldTypes screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFieldTypes],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("Name"); }],
        /// <field>
        /// Called after the sys_CreatedBy content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_CreatedBy_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("sys_CreatedBy"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("right"); }],
        /// <field>
        /// Called after the sys_CreatedOn content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_CreatedOn_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("sys_CreatedOn"); }],
        /// <field>
        /// Called after the sys_ModifiedBy content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_ModifiedBy_postRender: [$element, function () { return new lightSwitchApplication.ViewFieldTypes().findContentItem("sys_ModifiedBy"); }]
    });

    lightSwitchApplication.ViewFileType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.ViewFileType,
            value: lightSwitchApplication.ViewFileType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.ViewFileType,
            value: lightSwitchApplication.FileType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Extension: {
            _$class: msls.ContentItem,
            _$name: "Extension",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.FileType,
            value: lightSwitchApplication.FileType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewFileType,
            data: lightSwitchApplication.FileType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewFileType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewFileType, {
        /// <field>
        /// Called when a new ViewFileType screen is created.
        /// <br/>created(msls.application.ViewFileType screen)
        /// </field>
        created: [lightSwitchApplication.ViewFileType],
        /// <field>
        /// Called before changes on an active ViewFileType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewFileType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewFileType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("Code"); }],
        /// <field>
        /// Called after the Extension content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Extension_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("Extension"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewFileType().findContentItem("Name"); }]
    });

    lightSwitchApplication.ViewReconSourceType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconSourceType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ViewReconSourceType,
            value: lightSwitchApplication.ViewReconSourceType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ViewReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: lightSwitchApplication.ReconSourceType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconSourceType,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconSourceType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconSourceType, {
        /// <field>
        /// Called when a new ViewReconSourceType screen is created.
        /// <br/>created(msls.application.ViewReconSourceType screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconSourceType],
        /// <field>
        /// Called before changes on an active ViewReconSourceType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconSourceType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconSourceType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconSourceType().findContentItem("Name"); }]
    });

    lightSwitchApplication.ViewReconType.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconType
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ViewReconType,
            value: lightSwitchApplication.ViewReconType
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ViewReconType,
            value: lightSwitchApplication.ReconType
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "left",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ReconType,
            value: lightSwitchApplication.ReconType
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewReconType,
            data: lightSwitchApplication.ReconType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewReconType
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewReconType, {
        /// <field>
        /// Called when a new ViewReconType screen is created.
        /// <br/>created(msls.application.ViewReconType screen)
        /// </field>
        created: [lightSwitchApplication.ViewReconType],
        /// <field>
        /// Called before changes on an active ViewReconType screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewReconType screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewReconType],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("left"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("Code"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("right"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.ViewReconType().findContentItem("Name"); }]
    });

    lightSwitchApplication.Home.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.Home
        },
        ReconProcesses: {
            _$class: msls.ContentItem,
            _$name: "ReconProcesses",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        ShowBrowseReconProcesses: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseReconProcesses",
            _$parentName: "ReconProcesses",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseReconProcessSteps: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseReconProcessSteps",
            _$parentName: "ReconProcesses",
            screen: lightSwitchApplication.Home
        },
        FileDefinitions: {
            _$class: msls.ContentItem,
            _$name: "FileDefinitions",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        ShowBrowseFileDefinitions: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFileDefinitions",
            _$parentName: "FileDefinitions",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseFileSections: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFileSections",
            _$parentName: "FileDefinitions",
            screen: lightSwitchApplication.Home
        },
        FIelds: {
            _$class: msls.ContentItem,
            _$name: "FIelds",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        ShowBrowseSystemFields: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseSystemFields",
            _$parentName: "FIelds",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseFileFields: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFileFields",
            _$parentName: "FIelds",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseReconFields: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseReconFields",
            _$parentName: "FIelds",
            screen: lightSwitchApplication.Home
        },
        Types: {
            _$class: msls.ContentItem,
            _$name: "Types",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        ShowBrowseFieldTypes: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFieldTypes",
            _$parentName: "Types",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseReconSourceTypes: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseReconSourceTypes",
            _$parentName: "Types",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseFileTypes: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseFileTypes",
            _$parentName: "Types",
            screen: lightSwitchApplication.Home
        },
        Statuses: {
            _$class: msls.ContentItem,
            _$name: "Statuses",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.Home
        }
    };

    msls._addEntryPoints(lightSwitchApplication.Home, {
        /// <field>
        /// Called when a new Home screen is created.
        /// <br/>created(msls.application.Home screen)
        /// </field>
        created: [lightSwitchApplication.Home],
        /// <field>
        /// Called before changes on an active Home screen are applied.
        /// <br/>beforeApplyChanges(msls.application.Home screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.Home],
        /// <field>
        /// Called after the ReconProcesses content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconProcesses_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ReconProcesses"); }],
        /// <field>
        /// Called after the ShowBrowseReconProcesses content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseReconProcesses_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseReconProcesses"); }],
        /// <field>
        /// Called after the ShowBrowseReconProcessSteps content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseReconProcessSteps_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseReconProcessSteps"); }],
        /// <field>
        /// Called after the FileDefinitions content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinitions_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("FileDefinitions"); }],
        /// <field>
        /// Called after the ShowBrowseFileDefinitions content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFileDefinitions_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseFileDefinitions"); }],
        /// <field>
        /// Called after the ShowBrowseFileSections content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFileSections_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseFileSections"); }],
        /// <field>
        /// Called after the FIelds content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FIelds_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("FIelds"); }],
        /// <field>
        /// Called after the ShowBrowseSystemFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseSystemFields_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseSystemFields"); }],
        /// <field>
        /// Called after the ShowBrowseFileFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFileFields_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseFileFields"); }],
        /// <field>
        /// Called after the ShowBrowseReconFields content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseReconFields_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseReconFields"); }],
        /// <field>
        /// Called after the Types content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Types_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("Types"); }],
        /// <field>
        /// Called after the ShowBrowseFieldTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFieldTypes_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseFieldTypes"); }],
        /// <field>
        /// Called after the ShowBrowseReconSourceTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseReconSourceTypes_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseReconSourceTypes"); }],
        /// <field>
        /// Called after the ShowBrowseFileTypes content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseFileTypes_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseFileTypes"); }],
        /// <field>
        /// Called after the Statuses content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Statuses_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("Statuses"); }]
    });

}(msls.application));