/// <reference path="data.js" />

(function (lightSwitchApplication) {

    var $Screen = msls.Screen,
        $defineScreen = msls._defineScreen,
        $DataServiceQuery = msls.DataServiceQuery,
        $toODataString = msls._toODataString,
        $defineShowScreen = msls._defineShowScreen;

    function BrowseAllImportedFiles(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseAllImportedFiles screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ImportedFiles" type="msls.VisualCollection" elementType="msls.application.ImportedFile">
        /// Gets the importedFiles for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseAllImportedFiles.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseAllImportedFiles", parameters);
    }

    function BrowseImportedFilesUnreconciled(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseImportedFilesUnreconciled screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ImportedFilesUnreconciled" type="msls.VisualCollection" elementType="msls.application.ImportedFile">
        /// Gets the importedFilesUnreconciled for this screen.
        /// </field>
        /// <field name="ImportedFileReconSourcce" type="msls.application.ReconSource">
        /// Gets or sets the importedFileReconSourcce for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseImportedFilesUnreconciled.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseImportedFilesUnreconciled", parameters);
    }

    function ImportFile(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ImportFile screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ImportedFile" type="msls.application.ImportedFile">
        /// Gets or sets the importedFile for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ImportFile.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ImportFile", parameters);
    }

    function ViewImportedFile(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewImportedFile screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ImportedFile" type="msls.application.ImportedFile">
        /// Gets or sets the importedFile for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewImportedFile.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewImportedFile", parameters);
    }

    function BrowseReconProcesses(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconProcesses screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconProcesses" type="msls.VisualCollection" elementType="msls.application.ReconProcess">
        /// Gets the reconProcesses for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconProcesses.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconProcesses", parameters);
    }

    function ViewReconProcess(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconProcess screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconProcess" type="msls.application.ReconProcess">
        /// Gets or sets the reconProcess for this screen.
        /// </field>
        /// <field name="ReconProcessSteps" type="msls.VisualCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconProcess.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconProcess", parameters);
    }

    function BrowseSkyeImportDetails(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseSkyeImportDetails screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="SkyeImportDetails" type="msls.VisualCollection" elementType="msls.application.SkyeImportDetail">
        /// Gets the skyeImportDetails for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseSkyeImportDetails.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseSkyeImportDetails", parameters);
    }

    function BrowseSkyeImportHeaders(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseSkyeImportHeaders screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="SkyeImportHeaders" type="msls.VisualCollection" elementType="msls.application.SkyeImportHeader">
        /// Gets the skyeImportHeaders for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseSkyeImportHeaders.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseSkyeImportHeaders", parameters);
    }

    function Home(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the Home screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="details" type="msls.application.Home.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "Home", parameters);
    }

    msls._addToNamespace("msls.application", {

        BrowseAllImportedFiles: $defineScreen(BrowseAllImportedFiles, [
            {
                name: "ImportedFiles", kind: "collection", elementType: lightSwitchApplication.ImportedFile,
                createQuery: function () {
                    return this.dataWorkspace.PagaReconData.ImportedFiles;
                }
            }
        ], [
        ]),

        BrowseImportedFilesUnreconciled: $defineScreen(BrowseImportedFilesUnreconciled, [
            {
                name: "ImportedFilesUnreconciled", kind: "collection", elementType: lightSwitchApplication.ImportedFile,
                createQuery: function (ReconSourcce) {
                    return this.dataWorkspace.PagaReconData.ImportedFilesUnreconciled(ReconSourcce);
                }
            },
            { name: "ImportedFileReconSourcce", kind: "local", type: lightSwitchApplication.ReconSource }
        ], [
        ]),

        ImportFile: $defineScreen(ImportFile, [
            { name: "ImportedFile", kind: "local", type: lightSwitchApplication.ImportedFile }
        ], [
        ]),

        ViewImportedFile: $defineScreen(ViewImportedFile, [
            { name: "ImportedFile", kind: "local", type: lightSwitchApplication.ImportedFile }
        ], [
        ]),

        BrowseReconProcesses: $defineScreen(BrowseReconProcesses, [
            {
                name: "ReconProcesses", kind: "collection", elementType: lightSwitchApplication.ReconProcess,
                createQuery: function () {
                    return this.dataWorkspace.PagaReconData.ReconProcesses;
                }
            }
        ], [
        ]),

        ViewReconProcess: $defineScreen(ViewReconProcess, [
            { name: "ReconProcess", kind: "local", type: lightSwitchApplication.ReconProcess },
            {
                name: "ReconProcessSteps", kind: "collection", elementType: lightSwitchApplication.ReconProcessStep,
                getNavigationProperty: function () {
                    if (this.owner.ReconProcess) {
                        return this.owner.ReconProcess.details.properties.ReconProcessSteps;
                    }
                    return null;
                },
                appendQuery: function () {
                    return this;
                }
            }
        ], [
            { name: "ProcessRecon" }
        ]),

        BrowseSkyeImportDetails: $defineScreen(BrowseSkyeImportDetails, [
            {
                name: "SkyeImportDetails", kind: "collection", elementType: lightSwitchApplication.SkyeImportDetail,
                createQuery: function () {
                    return this.dataWorkspace.PagaReconData.SkyeImportDetails;
                }
            }
        ], [
        ]),

        BrowseSkyeImportHeaders: $defineScreen(BrowseSkyeImportHeaders, [
            {
                name: "SkyeImportHeaders", kind: "collection", elementType: lightSwitchApplication.SkyeImportHeader,
                createQuery: function () {
                    return this.dataWorkspace.PagaReconData.SkyeImportHeaders;
                }
            }
        ], [
        ]),

        Home: $defineScreen(Home, [
        ], [
        ]),

        showBrowseAllImportedFiles: $defineShowScreen(function showBrowseAllImportedFiles(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseAllImportedFiles screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseAllImportedFiles", parameters, options);
        }),

        showBrowseImportedFilesUnreconciled: $defineShowScreen(function showBrowseImportedFilesUnreconciled(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseImportedFilesUnreconciled screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseImportedFilesUnreconciled", parameters, options);
        }),

        showImportFile: $defineShowScreen(function showImportFile(ImportedFile, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ImportFile screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ImportFile", parameters, options);
        }),

        showViewImportedFile: $defineShowScreen(function showViewImportedFile(ImportedFile, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewImportedFile screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewImportedFile", parameters, options);
        }),

        showBrowseReconProcesses: $defineShowScreen(function showBrowseReconProcesses(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconProcesses screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconProcesses", parameters, options);
        }),

        showViewReconProcess: $defineShowScreen(function showViewReconProcess(ReconProcess, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconProcess screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconProcess", parameters, options);
        }),

        showBrowseSkyeImportDetails: $defineShowScreen(function showBrowseSkyeImportDetails(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseSkyeImportDetails screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseSkyeImportDetails", parameters, options);
        }),

        showBrowseSkyeImportHeaders: $defineShowScreen(function showBrowseSkyeImportHeaders(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseSkyeImportHeaders screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseSkyeImportHeaders", parameters, options);
        }),

        showHome: $defineShowScreen(function showHome(options) {
            /// <summary>
            /// Asynchronously navigates forward to the Home screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("Home", parameters, options);
        })

    });

}(msls.application));
