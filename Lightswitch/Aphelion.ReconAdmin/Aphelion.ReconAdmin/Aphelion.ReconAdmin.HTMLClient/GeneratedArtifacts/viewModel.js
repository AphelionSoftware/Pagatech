/// <reference path="data.js" />

(function (lightSwitchApplication) {

    var $Screen = msls.Screen,
        $defineScreen = msls._defineScreen,
        $DataServiceQuery = msls.DataServiceQuery,
        $toODataString = msls._toODataString,
        $defineShowScreen = msls._defineShowScreen;

    function AddEditFieldTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFieldTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FieldType" type="msls.application.FieldType">
        /// Gets or sets the fieldType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFieldTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFieldTypes", parameters);
    }

    function ViewFieldTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFieldTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FieldType" type="msls.application.FieldType">
        /// Gets or sets the fieldType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFieldTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFieldTypes", parameters);
    }

    function BrowseFieldTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFieldTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FieldTypes" type="msls.VisualCollection" elementType="msls.application.FieldType">
        /// Gets the fieldTypes for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFieldTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFieldTypes", parameters);
    }

    function AddEditFileType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFileType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileType" type="msls.application.FileType">
        /// Gets or sets the fileType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFileType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFileType", parameters);
    }

    function ViewFileType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFileType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileType" type="msls.application.FileType">
        /// Gets or sets the fileType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFileType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFileType", parameters);
    }

    function BrowseFileTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFileTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileTypes" type="msls.VisualCollection" elementType="msls.application.FileType">
        /// Gets the fileTypes for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFileTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFileTypes", parameters);
    }

    function AddEditReconSourceType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconSourceType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconSourceType" type="msls.application.ReconSourceType">
        /// Gets or sets the reconSourceType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconSourceType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconSourceType", parameters);
    }

    function ViewReconSourceType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconSourceType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconSourceType" type="msls.application.ReconSourceType">
        /// Gets or sets the reconSourceType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconSourceType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconSourceType", parameters);
    }

    function BrowseReconSourceTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconSourceTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconSourceTypes" type="msls.VisualCollection" elementType="msls.application.ReconSourceType">
        /// Gets the reconSourceTypes for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconSourceTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconSourceTypes", parameters);
    }

    function AddEditReconType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconType" type="msls.application.ReconType">
        /// Gets or sets the reconType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconType", parameters);
    }

    function ViewReconType(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconType screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconType" type="msls.application.ReconType">
        /// Gets or sets the reconType for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconType.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconType", parameters);
    }

    function BrowseReconTypes(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconTypes screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconTypes" type="msls.VisualCollection" elementType="msls.application.ReconType">
        /// Gets the reconTypes for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconTypes.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconTypes", parameters);
    }

    function AddEditSystemField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditSystemField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="SystemField" type="msls.application.SystemField">
        /// Gets or sets the systemField for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditSystemField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditSystemField", parameters);
    }

    function ViewSystemField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewSystemField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="SystemField" type="msls.application.SystemField">
        /// Gets or sets the systemField for this screen.
        /// </field>
        /// <field name="ReconFields" type="msls.VisualCollection" elementType="msls.application.ReconField">
        /// Gets the reconFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewSystemField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewSystemField", parameters);
    }

    function BrowseSystemFields(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseSystemFields screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="SystemFields" type="msls.VisualCollection" elementType="msls.application.SystemField">
        /// Gets the systemFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseSystemFields.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseSystemFields", parameters);
    }

    function AddEditReconField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconField" type="msls.application.ReconField">
        /// Gets or sets the reconField for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconField", parameters);
    }

    function ViewReconField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconField" type="msls.application.ReconField">
        /// Gets or sets the reconField for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconField", parameters);
    }

    function BrowseReconFields(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconFields screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconFields" type="msls.VisualCollection" elementType="msls.application.ReconField">
        /// Gets the reconFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconFields.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconFields", parameters);
    }

    function AddEditFileField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFileField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileField" type="msls.application.FileField">
        /// Gets or sets the fileField for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFileField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFileField", parameters);
    }

    function ViewFileField(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFileField screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileField" type="msls.application.FileField">
        /// Gets or sets the fileField for this screen.
        /// </field>
        /// <field name="ImportFileField_ReconFields" type="msls.VisualCollection" elementType="msls.application.ImportFileField_ReconField">
        /// Gets the importFileField_ReconFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFileField.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFileField", parameters);
    }

    function BrowseFileFields(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFileFields screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileFields" type="msls.VisualCollection" elementType="msls.application.FileField">
        /// Gets the fileFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFileFields.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFileFields", parameters);
    }

    function AddEditFileDefinition(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFileDefinition screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileDefinition" type="msls.application.FileDefinition">
        /// Gets or sets the fileDefinition for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFileDefinition.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFileDefinition", parameters);
    }

    function ViewFileDefinition(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFileDefinition screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileDefinition" type="msls.application.FileDefinition">
        /// Gets or sets the fileDefinition for this screen.
        /// </field>
        /// <field name="FileSections" type="msls.VisualCollection" elementType="msls.application.FileSection">
        /// Gets the fileSections for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFileDefinition.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFileDefinition", parameters);
    }

    function BrowseFileDefinitions(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFileDefinitions screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileDefinitions" type="msls.VisualCollection" elementType="msls.application.FileDefinition">
        /// Gets the fileDefinitions for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFileDefinitions.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFileDefinitions", parameters);
    }

    function AddEditFileSection(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditFileSection screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileSection" type="msls.application.FileSection">
        /// Gets or sets the fileSection for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditFileSection.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditFileSection", parameters);
    }

    function ViewFileSection(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewFileSection screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileSection" type="msls.application.FileSection">
        /// Gets or sets the fileSection for this screen.
        /// </field>
        /// <field name="FileFields" type="msls.VisualCollection" elementType="msls.application.FileField">
        /// Gets the fileFields for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewFileSection.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewFileSection", parameters);
    }

    function BrowseFileSections(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseFileSections screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="FileSections" type="msls.VisualCollection" elementType="msls.application.FileSection">
        /// Gets the fileSections for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseFileSections.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseFileSections", parameters);
    }

    function AddEditReconStatus(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconStatus screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconStatu" type="msls.application.ReconStatu">
        /// Gets or sets the reconStatu for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconStatus.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconStatus", parameters);
    }

    function ViewReconStatus(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconStatus screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconStatu" type="msls.application.ReconStatu">
        /// Gets or sets the reconStatu for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconStatus.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconStatus", parameters);
    }

    function BrowseReconStatusSet(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconStatusSet screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconStatus" type="msls.VisualCollection" elementType="msls.application.ReconStatu">
        /// Gets the reconStatus for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconStatusSet.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconStatusSet", parameters);
    }

    function AddEditReconItemStatu(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconItemStatu screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconItemStatu" type="msls.application.ReconItemStatu">
        /// Gets or sets the reconItemStatu for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconItemStatu.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconItemStatu", parameters);
    }

    function ViewReconItemStatu(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconItemStatu screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconItemStatu" type="msls.application.ReconItemStatu">
        /// Gets or sets the reconItemStatu for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconItemStatu.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconItemStatu", parameters);
    }

    function BrowseReconItemStatus(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconItemStatus screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconItemStatus" type="msls.VisualCollection" elementType="msls.application.ReconItemStatu">
        /// Gets the reconItemStatus for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconItemStatus.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconItemStatus", parameters);
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

    function AddEditReconProcess(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconProcess screen.
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
        /// <field name="details" type="msls.application.AddEditReconProcess.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconProcess", parameters);
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

    function AddEditReconProcessStep(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the AddEditReconProcessStep screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconProcessStep" type="msls.application.ReconProcessStep">
        /// Gets or sets the reconProcessStep for this screen.
        /// </field>
        /// <field name="details" type="msls.application.AddEditReconProcessStep.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "AddEditReconProcessStep", parameters);
    }

    function ViewReconProcessStep(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the ViewReconProcessStep screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconProcessStep" type="msls.application.ReconProcessStep">
        /// Gets or sets the reconProcessStep for this screen.
        /// </field>
        /// <field name="details" type="msls.application.ViewReconProcessStep.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "ViewReconProcessStep", parameters);
    }

    function BrowseReconProcessSteps(parameters, dataWorkspace) {
        /// <summary>
        /// Represents the BrowseReconProcessSteps screen.
        /// </summary>
        /// <param name="parameters" type="Array">
        /// An array of screen parameter values.
        /// </param>
        /// <param name="dataWorkspace" type="msls.application.DataWorkspace" optional="true">
        /// An existing data workspace for this screen to use. By default, a new data workspace is created.
        /// </param>
        /// <field name="ReconProcessSteps" type="msls.VisualCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps for this screen.
        /// </field>
        /// <field name="details" type="msls.application.BrowseReconProcessSteps.Details">
        /// Gets the details for this screen.
        /// </field>
        if (!dataWorkspace) {
            dataWorkspace = new lightSwitchApplication.DataWorkspace();
        }
        $Screen.call(this, dataWorkspace, "BrowseReconProcessSteps", parameters);
    }

    msls._addToNamespace("msls.application", {

        AddEditFieldTypes: $defineScreen(AddEditFieldTypes, [
            { name: "FieldType", kind: "local", type: lightSwitchApplication.FieldType }
        ], [
        ]),

        ViewFieldTypes: $defineScreen(ViewFieldTypes, [
            { name: "FieldType", kind: "local", type: lightSwitchApplication.FieldType }
        ], [
        ]),

        BrowseFieldTypes: $defineScreen(BrowseFieldTypes, [
            {
                name: "FieldTypes", kind: "collection", elementType: lightSwitchApplication.FieldType,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.FieldTypes;
                }
            }
        ], [
        ]),

        AddEditFileType: $defineScreen(AddEditFileType, [
            { name: "FileType", kind: "local", type: lightSwitchApplication.FileType }
        ], [
        ]),

        ViewFileType: $defineScreen(ViewFileType, [
            { name: "FileType", kind: "local", type: lightSwitchApplication.FileType }
        ], [
        ]),

        BrowseFileTypes: $defineScreen(BrowseFileTypes, [
            {
                name: "FileTypes", kind: "collection", elementType: lightSwitchApplication.FileType,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.FileTypes;
                }
            }
        ], [
        ]),

        AddEditReconSourceType: $defineScreen(AddEditReconSourceType, [
            { name: "ReconSourceType", kind: "local", type: lightSwitchApplication.ReconSourceType }
        ], [
        ]),

        ViewReconSourceType: $defineScreen(ViewReconSourceType, [
            { name: "ReconSourceType", kind: "local", type: lightSwitchApplication.ReconSourceType }
        ], [
        ]),

        BrowseReconSourceTypes: $defineScreen(BrowseReconSourceTypes, [
            {
                name: "ReconSourceTypes", kind: "collection", elementType: lightSwitchApplication.ReconSourceType,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconSourceTypes;
                }
            }
        ], [
        ]),

        AddEditReconType: $defineScreen(AddEditReconType, [
            { name: "ReconType", kind: "local", type: lightSwitchApplication.ReconType }
        ], [
        ]),

        ViewReconType: $defineScreen(ViewReconType, [
            { name: "ReconType", kind: "local", type: lightSwitchApplication.ReconType }
        ], [
        ]),

        BrowseReconTypes: $defineScreen(BrowseReconTypes, [
            {
                name: "ReconTypes", kind: "collection", elementType: lightSwitchApplication.ReconType,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconTypes;
                }
            }
        ], [
        ]),

        AddEditSystemField: $defineScreen(AddEditSystemField, [
            { name: "SystemField", kind: "local", type: lightSwitchApplication.SystemField }
        ], [
        ]),

        ViewSystemField: $defineScreen(ViewSystemField, [
            { name: "SystemField", kind: "local", type: lightSwitchApplication.SystemField },
            {
                name: "ReconFields", kind: "collection", elementType: lightSwitchApplication.ReconField,
                getNavigationProperty: function () {
                    if (this.owner.SystemField) {
                        return this.owner.SystemField.details.properties.ReconFields;
                    }
                    return null;
                },
                appendQuery: function () {
                    return this.expand("FieldType").expand("FileField");
                }
            }
        ], [
        ]),

        BrowseSystemFields: $defineScreen(BrowseSystemFields, [
            {
                name: "SystemFields", kind: "collection", elementType: lightSwitchApplication.SystemField,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.SystemFields;
                }
            }
        ], [
        ]),

        AddEditReconField: $defineScreen(AddEditReconField, [
            { name: "ReconField", kind: "local", type: lightSwitchApplication.ReconField }
        ], [
        ]),

        ViewReconField: $defineScreen(ViewReconField, [
            { name: "ReconField", kind: "local", type: lightSwitchApplication.ReconField }
        ], [
        ]),

        BrowseReconFields: $defineScreen(BrowseReconFields, [
            {
                name: "ReconFields", kind: "collection", elementType: lightSwitchApplication.ReconField,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconFields.expand("FieldType").expand("FileField");
                }
            }
        ], [
        ]),

        AddEditFileField: $defineScreen(AddEditFileField, [
            { name: "FileField", kind: "local", type: lightSwitchApplication.FileField }
        ], [
        ]),

        ViewFileField: $defineScreen(ViewFileField, [
            { name: "FileField", kind: "local", type: lightSwitchApplication.FileField },
            {
                name: "ImportFileField_ReconFields", kind: "collection", elementType: lightSwitchApplication.ImportFileField_ReconField,
                getNavigationProperty: function () {
                    if (this.owner.FileField) {
                        return this.owner.FileField.details.properties.ImportFileField_ReconFields;
                    }
                    return null;
                },
                appendQuery: function () {
                    return this.expand("ReconField");
                }
            }
        ], [
        ]),

        BrowseFileFields: $defineScreen(BrowseFileFields, [
            {
                name: "FileFields", kind: "collection", elementType: lightSwitchApplication.FileField,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.FileFields.expand("FileSection");
                }
            }
        ], [
        ]),

        AddEditFileDefinition: $defineScreen(AddEditFileDefinition, [
            { name: "FileDefinition", kind: "local", type: lightSwitchApplication.FileDefinition }
        ], [
        ]),

        ViewFileDefinition: $defineScreen(ViewFileDefinition, [
            { name: "FileDefinition", kind: "local", type: lightSwitchApplication.FileDefinition },
            {
                name: "FileSections", kind: "collection", elementType: lightSwitchApplication.FileSection,
                getNavigationProperty: function () {
                    if (this.owner.FileDefinition) {
                        return this.owner.FileDefinition.details.properties.FileSections;
                    }
                    return null;
                },
                appendQuery: function () {
                    return this;
                }
            }
        ], [
        ]),

        BrowseFileDefinitions: $defineScreen(BrowseFileDefinitions, [
            {
                name: "FileDefinitions", kind: "collection", elementType: lightSwitchApplication.FileDefinition,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.FileDefinitions;
                }
            }
        ], [
        ]),

        AddEditFileSection: $defineScreen(AddEditFileSection, [
            { name: "FileSection", kind: "local", type: lightSwitchApplication.FileSection }
        ], [
        ]),

        ViewFileSection: $defineScreen(ViewFileSection, [
            { name: "FileSection", kind: "local", type: lightSwitchApplication.FileSection },
            {
                name: "FileFields", kind: "collection", elementType: lightSwitchApplication.FileField,
                getNavigationProperty: function () {
                    if (this.owner.FileSection) {
                        return this.owner.FileSection.details.properties.FileFields;
                    }
                    return null;
                },
                appendQuery: function () {
                    return this;
                }
            }
        ], [
        ]),

        BrowseFileSections: $defineScreen(BrowseFileSections, [
            {
                name: "FileSections", kind: "collection", elementType: lightSwitchApplication.FileSection,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.FileSections;
                }
            }
        ], [
        ]),

        AddEditReconStatus: $defineScreen(AddEditReconStatus, [
            { name: "ReconStatu", kind: "local", type: lightSwitchApplication.ReconStatu }
        ], [
        ]),

        ViewReconStatus: $defineScreen(ViewReconStatus, [
            { name: "ReconStatu", kind: "local", type: lightSwitchApplication.ReconStatu }
        ], [
        ]),

        BrowseReconStatusSet: $defineScreen(BrowseReconStatusSet, [
            {
                name: "ReconStatus", kind: "collection", elementType: lightSwitchApplication.ReconStatu,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconStatus;
                }
            }
        ], [
        ]),

        AddEditReconItemStatu: $defineScreen(AddEditReconItemStatu, [
            { name: "ReconItemStatu", kind: "local", type: lightSwitchApplication.ReconItemStatu }
        ], [
        ]),

        ViewReconItemStatu: $defineScreen(ViewReconItemStatu, [
            { name: "ReconItemStatu", kind: "local", type: lightSwitchApplication.ReconItemStatu }
        ], [
        ]),

        BrowseReconItemStatus: $defineScreen(BrowseReconItemStatus, [
            {
                name: "ReconItemStatus", kind: "collection", elementType: lightSwitchApplication.ReconItemStatu,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconItemStatus;
                }
            }
        ], [
        ]),

        Home: $defineScreen(Home, [
        ], [
        ]),

        AddEditReconProcess: $defineScreen(AddEditReconProcess, [
            { name: "ReconProcess", kind: "local", type: lightSwitchApplication.ReconProcess }
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
                    return this.expand("FileSection");
                }
            }
        ], [
        ]),

        BrowseReconProcesses: $defineScreen(BrowseReconProcesses, [
            {
                name: "ReconProcesses", kind: "collection", elementType: lightSwitchApplication.ReconProcess,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconProcesses;
                }
            }
        ], [
        ]),

        AddEditReconProcessStep: $defineScreen(AddEditReconProcessStep, [
            { name: "ReconProcessStep", kind: "local", type: lightSwitchApplication.ReconProcessStep }
        ], [
        ]),

        ViewReconProcessStep: $defineScreen(ViewReconProcessStep, [
            { name: "ReconProcessStep", kind: "local", type: lightSwitchApplication.ReconProcessStep }
        ], [
        ]),

        BrowseReconProcessSteps: $defineScreen(BrowseReconProcessSteps, [
            {
                name: "ReconProcessSteps", kind: "collection", elementType: lightSwitchApplication.ReconProcessStep,
                createQuery: function () {
                    return this.dataWorkspace.ReconData.ReconProcessSteps.expand("FileSection");
                }
            }
        ], [
        ]),

        showAddEditFieldTypes: $defineShowScreen(function showAddEditFieldTypes(FieldType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFieldTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFieldTypes", parameters, options);
        }),

        showViewFieldTypes: $defineShowScreen(function showViewFieldTypes(FieldType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFieldTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFieldTypes", parameters, options);
        }),

        showBrowseFieldTypes: $defineShowScreen(function showBrowseFieldTypes(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFieldTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFieldTypes", parameters, options);
        }),

        showAddEditFileType: $defineShowScreen(function showAddEditFileType(FileType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFileType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFileType", parameters, options);
        }),

        showViewFileType: $defineShowScreen(function showViewFileType(FileType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFileType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFileType", parameters, options);
        }),

        showBrowseFileTypes: $defineShowScreen(function showBrowseFileTypes(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFileTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFileTypes", parameters, options);
        }),

        showAddEditReconSourceType: $defineShowScreen(function showAddEditReconSourceType(ReconSourceType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconSourceType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconSourceType", parameters, options);
        }),

        showViewReconSourceType: $defineShowScreen(function showViewReconSourceType(ReconSourceType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconSourceType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconSourceType", parameters, options);
        }),

        showBrowseReconSourceTypes: $defineShowScreen(function showBrowseReconSourceTypes(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconSourceTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconSourceTypes", parameters, options);
        }),

        showAddEditReconType: $defineShowScreen(function showAddEditReconType(ReconType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconType", parameters, options);
        }),

        showViewReconType: $defineShowScreen(function showViewReconType(ReconType, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconType screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconType", parameters, options);
        }),

        showBrowseReconTypes: $defineShowScreen(function showBrowseReconTypes(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconTypes screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconTypes", parameters, options);
        }),

        showAddEditSystemField: $defineShowScreen(function showAddEditSystemField(SystemField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditSystemField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditSystemField", parameters, options);
        }),

        showViewSystemField: $defineShowScreen(function showViewSystemField(SystemField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewSystemField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewSystemField", parameters, options);
        }),

        showBrowseSystemFields: $defineShowScreen(function showBrowseSystemFields(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseSystemFields screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseSystemFields", parameters, options);
        }),

        showAddEditReconField: $defineShowScreen(function showAddEditReconField(ReconField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconField", parameters, options);
        }),

        showViewReconField: $defineShowScreen(function showViewReconField(ReconField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconField", parameters, options);
        }),

        showBrowseReconFields: $defineShowScreen(function showBrowseReconFields(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconFields screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconFields", parameters, options);
        }),

        showAddEditFileField: $defineShowScreen(function showAddEditFileField(FileField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFileField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFileField", parameters, options);
        }),

        showViewFileField: $defineShowScreen(function showViewFileField(FileField, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFileField screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFileField", parameters, options);
        }),

        showBrowseFileFields: $defineShowScreen(function showBrowseFileFields(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFileFields screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFileFields", parameters, options);
        }),

        showAddEditFileDefinition: $defineShowScreen(function showAddEditFileDefinition(FileDefinition, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFileDefinition screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFileDefinition", parameters, options);
        }),

        showViewFileDefinition: $defineShowScreen(function showViewFileDefinition(FileDefinition, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFileDefinition screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFileDefinition", parameters, options);
        }),

        showBrowseFileDefinitions: $defineShowScreen(function showBrowseFileDefinitions(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFileDefinitions screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFileDefinitions", parameters, options);
        }),

        showAddEditFileSection: $defineShowScreen(function showAddEditFileSection(FileSection, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditFileSection screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditFileSection", parameters, options);
        }),

        showViewFileSection: $defineShowScreen(function showViewFileSection(FileSection, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewFileSection screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewFileSection", parameters, options);
        }),

        showBrowseFileSections: $defineShowScreen(function showBrowseFileSections(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseFileSections screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseFileSections", parameters, options);
        }),

        showAddEditReconStatus: $defineShowScreen(function showAddEditReconStatus(ReconStatu, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconStatus screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconStatus", parameters, options);
        }),

        showViewReconStatus: $defineShowScreen(function showViewReconStatus(ReconStatu, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconStatus screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconStatus", parameters, options);
        }),

        showBrowseReconStatusSet: $defineShowScreen(function showBrowseReconStatusSet(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconStatusSet screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconStatusSet", parameters, options);
        }),

        showAddEditReconItemStatu: $defineShowScreen(function showAddEditReconItemStatu(ReconItemStatu, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconItemStatu screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconItemStatu", parameters, options);
        }),

        showViewReconItemStatu: $defineShowScreen(function showViewReconItemStatu(ReconItemStatu, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconItemStatu screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconItemStatu", parameters, options);
        }),

        showBrowseReconItemStatus: $defineShowScreen(function showBrowseReconItemStatus(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconItemStatus screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconItemStatus", parameters, options);
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
        }),

        showAddEditReconProcess: $defineShowScreen(function showAddEditReconProcess(ReconProcess, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconProcess screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconProcess", parameters, options);
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

        showAddEditReconProcessStep: $defineShowScreen(function showAddEditReconProcessStep(ReconProcessStep, options) {
            /// <summary>
            /// Asynchronously navigates forward to the AddEditReconProcessStep screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("AddEditReconProcessStep", parameters, options);
        }),

        showViewReconProcessStep: $defineShowScreen(function showViewReconProcessStep(ReconProcessStep, options) {
            /// <summary>
            /// Asynchronously navigates forward to the ViewReconProcessStep screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 1);
            return lightSwitchApplication.showScreen("ViewReconProcessStep", parameters, options);
        }),

        showBrowseReconProcessSteps: $defineShowScreen(function showBrowseReconProcessSteps(options) {
            /// <summary>
            /// Asynchronously navigates forward to the BrowseReconProcessSteps screen.
            /// </summary>
            /// <param name="options" optional="true">
            /// An object that provides one or more of the following options:<br/>- beforeShown: a function that is called after boundary behavior has been applied but before the screen is shown.<br/>+ Signature: beforeShown(screen)<br/>- afterClosed: a function that is called after boundary behavior has been applied and the screen has been closed.<br/>+ Signature: afterClosed(screen, action : msls.NavigateBackAction)
            /// </param>
            /// <returns type="WinJS.Promise" />
            var parameters = Array.prototype.slice.call(arguments, 0, 0);
            return lightSwitchApplication.showScreen("BrowseReconProcessSteps", parameters, options);
        })

    });

}(msls.application));
