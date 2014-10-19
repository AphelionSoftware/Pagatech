/// <reference path="viewModel.js" />

(function (lightSwitchApplication) {

    var $element = document.createElement("div");

    lightSwitchApplication.BrowseAllImportedFiles.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseAllImportedFiles
        },
        ImportedFileList: {
            _$class: msls.ContentItem,
            _$name: "ImportedFileList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseAllImportedFiles,
            data: lightSwitchApplication.BrowseAllImportedFiles,
            value: lightSwitchApplication.BrowseAllImportedFiles
        },
        ImportedFiles: {
            _$class: msls.ContentItem,
            _$name: "ImportedFiles",
            _$parentName: "ImportedFileList",
            screen: lightSwitchApplication.BrowseAllImportedFiles,
            data: lightSwitchApplication.BrowseAllImportedFiles,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseAllImportedFiles,
                _$entry: {
                    elementType: lightSwitchApplication.ImportedFile
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ImportedFiles",
            screen: lightSwitchApplication.BrowseAllImportedFiles,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        FileName: {
            _$class: msls.ContentItem,
            _$name: "FileName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseAllImportedFiles,
            data: lightSwitchApplication.ImportedFile,
            value: String
        },
        sys_ModifiedOn: {
            _$class: msls.ContentItem,
            _$name: "sys_ModifiedOn",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseAllImportedFiles,
            data: lightSwitchApplication.ImportedFile,
            value: Date
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseAllImportedFiles
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseAllImportedFiles, {
        /// <field>
        /// Called when a new BrowseAllImportedFiles screen is created.
        /// <br/>created(msls.application.BrowseAllImportedFiles screen)
        /// </field>
        created: [lightSwitchApplication.BrowseAllImportedFiles],
        /// <field>
        /// Called before changes on an active BrowseAllImportedFiles screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseAllImportedFiles screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseAllImportedFiles],
        /// <field>
        /// Called after the ImportedFileList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportedFileList_postRender: [$element, function () { return new lightSwitchApplication.BrowseAllImportedFiles().findContentItem("ImportedFileList"); }],
        /// <field>
        /// Called after the ImportedFiles content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportedFiles_postRender: [$element, function () { return new lightSwitchApplication.BrowseAllImportedFiles().findContentItem("ImportedFiles"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseAllImportedFiles().findContentItem("rows"); }],
        /// <field>
        /// Called after the FileName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileName_postRender: [$element, function () { return new lightSwitchApplication.BrowseAllImportedFiles().findContentItem("FileName"); }],
        /// <field>
        /// Called after the sys_ModifiedOn content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_ModifiedOn_postRender: [$element, function () { return new lightSwitchApplication.BrowseAllImportedFiles().findContentItem("sys_ModifiedOn"); }]
    });

    lightSwitchApplication.BrowseImportedFilesUnreconciled.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled
        },
        ImportedFileList: {
            _$class: msls.ContentItem,
            _$name: "ImportedFileList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            value: lightSwitchApplication.BrowseImportedFilesUnreconciled
        },
        ImportedFilesUnreconciled: {
            _$class: msls.ContentItem,
            _$name: "ImportedFilesUnreconciled",
            _$parentName: "ImportedFileList",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
                _$entry: {
                    elementType: lightSwitchApplication.ImportedFile
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "ImportedFilesUnreconciled",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        FileName: {
            _$class: msls.ContentItem,
            _$name: "FileName",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ImportedFile,
            value: String
        },
        sys_ModifiedOn: {
            _$class: msls.ContentItem,
            _$name: "sys_ModifiedOn",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ImportedFile,
            value: Date
        },
        ImportedFileReconSourcce: {
            _$class: msls.ContentItem,
            _$name: "ImportedFileReconSourcce",
            _$parentName: "ImportedFileList",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            value: lightSwitchApplication.ReconSource
        },
        Code: {
            _$class: msls.ContentItem,
            _$name: "Code",
            _$parentName: "ImportedFileReconSourcce",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ReconSource,
            value: String
        },
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "ImportedFileReconSourcce",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ReconSource,
            value: String
        },
        ReconSourceType: {
            _$class: msls.ContentItem,
            _$name: "ReconSourceType",
            _$parentName: "ImportedFileReconSourcce",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ReconSource,
            value: lightSwitchApplication.ReconSourceType
        },
        Code1: {
            _$class: msls.ContentItem,
            _$name: "Code1",
            _$parentName: "ReconSourceType",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Name1: {
            _$class: msls.ContentItem,
            _$name: "Name1",
            _$parentName: "ReconSourceType",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled,
            data: lightSwitchApplication.ReconSourceType,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseImportedFilesUnreconciled
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseImportedFilesUnreconciled, {
        /// <field>
        /// Called when a new BrowseImportedFilesUnreconciled screen is created.
        /// <br/>created(msls.application.BrowseImportedFilesUnreconciled screen)
        /// </field>
        created: [lightSwitchApplication.BrowseImportedFilesUnreconciled],
        /// <field>
        /// Called before changes on an active BrowseImportedFilesUnreconciled screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseImportedFilesUnreconciled screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseImportedFilesUnreconciled],
        /// <field>
        /// Called after the ImportedFileList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportedFileList_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("ImportedFileList"); }],
        /// <field>
        /// Called after the ImportedFilesUnreconciled content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportedFilesUnreconciled_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("ImportedFilesUnreconciled"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("rows"); }],
        /// <field>
        /// Called after the FileName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileName_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("FileName"); }],
        /// <field>
        /// Called after the sys_ModifiedOn content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        sys_ModifiedOn_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("sys_ModifiedOn"); }],
        /// <field>
        /// Called after the ImportedFileReconSourcce content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ImportedFileReconSourcce_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("ImportedFileReconSourcce"); }],
        /// <field>
        /// Called after the Code content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("Code"); }],
        /// <field>
        /// Called after the Name content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("Name"); }],
        /// <field>
        /// Called after the ReconSourceType content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconSourceType_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("ReconSourceType"); }],
        /// <field>
        /// Called after the Code1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code1_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("Code1"); }],
        /// <field>
        /// Called after the Name1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name1_postRender: [$element, function () { return new lightSwitchApplication.BrowseImportedFilesUnreconciled().findContentItem("Name1"); }]
    });

    lightSwitchApplication.ImportFile.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ImportFile
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportFile,
            value: lightSwitchApplication.ImportFile
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportFile,
            value: lightSwitchApplication.ImportedFile
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        FileDefinition: {
            _$class: msls.ContentItem,
            _$name: "FileDefinition",
            _$parentName: "left",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.FileDefinition
        },
        RowTemplate: {
            _$class: msls.ContentItem,
            _$name: "RowTemplate",
            _$parentName: "FileDefinition",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.FileDefinition,
            value: lightSwitchApplication.FileDefinition
        },
        FileName: {
            _$class: msls.ContentItem,
            _$name: "FileName",
            _$parentName: "left",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportedFile,
            value: String
        },
        FileContents: {
            _$class: msls.ContentItem,
            _$name: "FileContents",
            _$parentName: "left",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportedFile,
            value: String
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ImportFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ImportFile
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ImportFile, {
        /// <field>
        /// Called when a new ImportFile screen is created.
        /// <br/>created(msls.application.ImportFile screen)
        /// </field>
        created: [lightSwitchApplication.ImportFile],
        /// <field>
        /// Called before changes on an active ImportFile screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ImportFile screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ImportFile],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("left"); }],
        /// <field>
        /// Called after the FileDefinition content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinition_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("FileDefinition"); }],
        /// <field>
        /// Called after the RowTemplate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        RowTemplate_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("RowTemplate"); }],
        /// <field>
        /// Called after the FileName content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileName_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("FileName"); }],
        /// <field>
        /// Called to render the FileContents content item.
        /// <br/>render(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileContents_render: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("FileContents"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ImportFile().findContentItem("right"); }]
    });

    lightSwitchApplication.ViewImportedFile.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewImportedFile
        },
        Details: {
            _$class: msls.ContentItem,
            _$name: "Details",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ViewImportedFile,
            value: lightSwitchApplication.ViewImportedFile
        },
        columns: {
            _$class: msls.ContentItem,
            _$name: "columns",
            _$parentName: "Details",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ViewImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        left: {
            _$class: msls.ContentItem,
            _$name: "left",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        right: {
            _$class: msls.ContentItem,
            _$name: "right",
            _$parentName: "columns",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ImportedFile
        },
        FileDefinition: {
            _$class: msls.ContentItem,
            _$name: "FileDefinition",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.FileDefinition
        },
        ReconSummary: {
            _$class: msls.ContentItem,
            _$name: "ReconSummary",
            _$parentName: "right",
            screen: lightSwitchApplication.ViewImportedFile,
            data: lightSwitchApplication.ImportedFile,
            value: lightSwitchApplication.ReconSummary
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.ViewImportedFile
        }
    };

    msls._addEntryPoints(lightSwitchApplication.ViewImportedFile, {
        /// <field>
        /// Called when a new ViewImportedFile screen is created.
        /// <br/>created(msls.application.ViewImportedFile screen)
        /// </field>
        created: [lightSwitchApplication.ViewImportedFile],
        /// <field>
        /// Called before changes on an active ViewImportedFile screen are applied.
        /// <br/>beforeApplyChanges(msls.application.ViewImportedFile screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.ViewImportedFile],
        /// <field>
        /// Called to determine if the Reconcile method can be executed.
        /// <br/>canExecute(msls.application.ViewImportedFile screen)
        /// </field>
        Reconcile_canExecute: [lightSwitchApplication.ViewImportedFile],
        /// <field>
        /// Called to execute the Reconcile method.
        /// <br/>execute(msls.application.ViewImportedFile screen)
        /// </field>
        Reconcile_execute: [lightSwitchApplication.ViewImportedFile],
        /// <field>
        /// Called after the Details content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Details_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("Details"); }],
        /// <field>
        /// Called after the columns content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        columns_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("columns"); }],
        /// <field>
        /// Called after the left content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        left_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("left"); }],
        /// <field>
        /// Called after the right content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        right_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("right"); }],
        /// <field>
        /// Called after the FileDefinition content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        FileDefinition_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("FileDefinition"); }],
        /// <field>
        /// Called after the ReconSummary content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ReconSummary_postRender: [$element, function () { return new lightSwitchApplication.ViewImportedFile().findContentItem("ReconSummary"); }]
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
        Name: {
            _$class: msls.ContentItem,
            _$name: "Name",
            _$parentName: "left",
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
        Order: {
            _$class: msls.ContentItem,
            _$name: "Order",
            _$parentName: "rows",
            screen: lightSwitchApplication.ViewReconProcess,
            data: lightSwitchApplication.ReconProcessStep,
            value: Number
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
        /// Called to determine if the ProcessRecon method can be executed.
        /// <br/>canExecute(msls.application.ViewReconProcess screen)
        /// </field>
        ProcessRecon_canExecute: [lightSwitchApplication.ViewReconProcess],
        /// <field>
        /// Called to execute the ProcessRecon method.
        /// <br/>execute(msls.application.ViewReconProcess screen)
        /// </field>
        ProcessRecon_execute: [lightSwitchApplication.ViewReconProcess],
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
        /// Called after the Order content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Order_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Order"); }],
        /// <field>
        /// Called after the Code1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Code1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Code1"); }],
        /// <field>
        /// Called after the Name1 content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Name1_postRender: [$element, function () { return new lightSwitchApplication.ViewReconProcess().findContentItem("Name1"); }]
    });

    lightSwitchApplication.BrowseSkyeImportDetails.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSkyeImportDetails
        },
        SkyeImportDetailList: {
            _$class: msls.ContentItem,
            _$name: "SkyeImportDetailList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.BrowseSkyeImportDetails,
            value: lightSwitchApplication.BrowseSkyeImportDetails
        },
        SkyeImportDetails: {
            _$class: msls.ContentItem,
            _$name: "SkyeImportDetails",
            _$parentName: "SkyeImportDetailList",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.BrowseSkyeImportDetails,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseSkyeImportDetails,
                _$entry: {
                    elementType: lightSwitchApplication.SkyeImportDetail
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "SkyeImportDetails",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.SkyeImportDetail,
            value: lightSwitchApplication.SkyeImportDetail
        },
        TransactionDate: {
            _$class: msls.ContentItem,
            _$name: "TransactionDate",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.SkyeImportDetail,
            value: String
        },
        ValueDate: {
            _$class: msls.ContentItem,
            _$name: "ValueDate",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.SkyeImportDetail,
            value: String
        },
        TransactionReferenceNo: {
            _$class: msls.ContentItem,
            _$name: "TransactionReferenceNo",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportDetails,
            data: lightSwitchApplication.SkyeImportDetail,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSkyeImportDetails
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseSkyeImportDetails, {
        /// <field>
        /// Called when a new BrowseSkyeImportDetails screen is created.
        /// <br/>created(msls.application.BrowseSkyeImportDetails screen)
        /// </field>
        created: [lightSwitchApplication.BrowseSkyeImportDetails],
        /// <field>
        /// Called before changes on an active BrowseSkyeImportDetails screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseSkyeImportDetails screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseSkyeImportDetails],
        /// <field>
        /// Called after the SkyeImportDetailList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SkyeImportDetailList_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("SkyeImportDetailList"); }],
        /// <field>
        /// Called after the SkyeImportDetails content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SkyeImportDetails_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("SkyeImportDetails"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("rows"); }],
        /// <field>
        /// Called after the TransactionDate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TransactionDate_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("TransactionDate"); }],
        /// <field>
        /// Called after the ValueDate content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ValueDate_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("ValueDate"); }],
        /// <field>
        /// Called after the TransactionReferenceNo content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        TransactionReferenceNo_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportDetails().findContentItem("TransactionReferenceNo"); }]
    });

    lightSwitchApplication.BrowseSkyeImportHeaders.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders
        },
        SkyeImportHeaderList: {
            _$class: msls.ContentItem,
            _$name: "SkyeImportHeaderList",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.BrowseSkyeImportHeaders,
            value: lightSwitchApplication.BrowseSkyeImportHeaders
        },
        SkyeImportHeaders: {
            _$class: msls.ContentItem,
            _$name: "SkyeImportHeaders",
            _$parentName: "SkyeImportHeaderList",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.BrowseSkyeImportHeaders,
            value: {
                _$class: msls.VisualCollection,
                screen: lightSwitchApplication.BrowseSkyeImportHeaders,
                _$entry: {
                    elementType: lightSwitchApplication.SkyeImportHeader
                }
            }
        },
        rows: {
            _$class: msls.ContentItem,
            _$name: "rows",
            _$parentName: "SkyeImportHeaders",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.SkyeImportHeader,
            value: lightSwitchApplication.SkyeImportHeader
        },
        CustomerNo: {
            _$class: msls.ContentItem,
            _$name: "CustomerNo",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.SkyeImportHeader,
            value: String
        },
        AccountNumber: {
            _$class: msls.ContentItem,
            _$name: "AccountNumber",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.SkyeImportHeader,
            value: String
        },
        AccountCurrency: {
            _$class: msls.ContentItem,
            _$name: "AccountCurrency",
            _$parentName: "rows",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders,
            data: lightSwitchApplication.SkyeImportHeader,
            value: String
        },
        Popups: {
            _$class: msls.ContentItem,
            _$name: "Popups",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.BrowseSkyeImportHeaders
        }
    };

    msls._addEntryPoints(lightSwitchApplication.BrowseSkyeImportHeaders, {
        /// <field>
        /// Called when a new BrowseSkyeImportHeaders screen is created.
        /// <br/>created(msls.application.BrowseSkyeImportHeaders screen)
        /// </field>
        created: [lightSwitchApplication.BrowseSkyeImportHeaders],
        /// <field>
        /// Called before changes on an active BrowseSkyeImportHeaders screen are applied.
        /// <br/>beforeApplyChanges(msls.application.BrowseSkyeImportHeaders screen)
        /// </field>
        beforeApplyChanges: [lightSwitchApplication.BrowseSkyeImportHeaders],
        /// <field>
        /// Called after the SkyeImportHeaderList content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SkyeImportHeaderList_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("SkyeImportHeaderList"); }],
        /// <field>
        /// Called after the SkyeImportHeaders content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        SkyeImportHeaders_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("SkyeImportHeaders"); }],
        /// <field>
        /// Called after the rows content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        rows_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("rows"); }],
        /// <field>
        /// Called after the CustomerNo content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        CustomerNo_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("CustomerNo"); }],
        /// <field>
        /// Called after the AccountNumber content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        AccountNumber_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("AccountNumber"); }],
        /// <field>
        /// Called after the AccountCurrency content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        AccountCurrency_postRender: [$element, function () { return new lightSwitchApplication.BrowseSkyeImportHeaders().findContentItem("AccountCurrency"); }]
    });

    lightSwitchApplication.Home.prototype._$contentItems = {
        Tabs: {
            _$class: msls.ContentItem,
            _$name: "Tabs",
            _$parentName: "RootContentItem",
            screen: lightSwitchApplication.Home
        },
        Group: {
            _$class: msls.ContentItem,
            _$name: "Group",
            _$parentName: "Tabs",
            screen: lightSwitchApplication.Home,
            data: lightSwitchApplication.Home,
            value: lightSwitchApplication.Home
        },
        ShowBrowseImportedFiles: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseImportedFiles",
            _$parentName: "Group",
            screen: lightSwitchApplication.Home
        },
        ShowBrowseImportedFilesUnreconciled: {
            _$class: msls.ContentItem,
            _$name: "ShowBrowseImportedFilesUnreconciled",
            _$parentName: "Group",
            screen: lightSwitchApplication.Home
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
        /// Called after the Group content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        Group_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("Group"); }],
        /// <field>
        /// Called after the ShowBrowseImportedFiles content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseImportedFiles_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseImportedFiles"); }],
        /// <field>
        /// Called after the ShowBrowseImportedFilesUnreconciled content item has been rendered.
        /// <br/>postRender(HTMLElement element, msls.ContentItem contentItem)
        /// </field>
        ShowBrowseImportedFilesUnreconciled_postRender: [$element, function () { return new lightSwitchApplication.Home().findContentItem("ShowBrowseImportedFilesUnreconciled"); }]
    });

}(msls.application));