/// <reference path="data.js" />

(function (lightSwitchApplication) {

    msls._addEntryPoints(lightSwitchApplication.FieldType, {
        /// <field>
        /// Called when a new fieldType is created.
        /// <br/>created(msls.application.FieldType entity)
        /// </field>
        created: [lightSwitchApplication.FieldType]
    });

    msls._addEntryPoints(lightSwitchApplication.FileDefinition, {
        /// <field>
        /// Called when a new fileDefinition is created.
        /// <br/>created(msls.application.FileDefinition entity)
        /// </field>
        created: [lightSwitchApplication.FileDefinition]
    });

    msls._addEntryPoints(lightSwitchApplication.FileFieldRule, {
        /// <field>
        /// Called when a new fileFieldRule is created.
        /// <br/>created(msls.application.FileFieldRule entity)
        /// </field>
        created: [lightSwitchApplication.FileFieldRule]
    });

    msls._addEntryPoints(lightSwitchApplication.FileField, {
        /// <field>
        /// Called when a new fileField is created.
        /// <br/>created(msls.application.FileField entity)
        /// </field>
        created: [lightSwitchApplication.FileField]
    });

    msls._addEntryPoints(lightSwitchApplication.FileSection, {
        /// <field>
        /// Called when a new fileSection is created.
        /// <br/>created(msls.application.FileSection entity)
        /// </field>
        created: [lightSwitchApplication.FileSection]
    });

    msls._addEntryPoints(lightSwitchApplication.FileType, {
        /// <field>
        /// Called when a new fileType is created.
        /// <br/>created(msls.application.FileType entity)
        /// </field>
        created: [lightSwitchApplication.FileType]
    });

    msls._addEntryPoints(lightSwitchApplication.GlobalSetting, {
        /// <field>
        /// Called when a new globalSetting is created.
        /// <br/>created(msls.application.GlobalSetting entity)
        /// </field>
        created: [lightSwitchApplication.GlobalSetting]
    });

    msls._addEntryPoints(lightSwitchApplication.ImportedFile, {
        /// <field>
        /// Called when a new importedFile is created.
        /// <br/>created(msls.application.ImportedFile entity)
        /// </field>
        created: [lightSwitchApplication.ImportedFile]
    });

    msls._addEntryPoints(lightSwitchApplication.NIBBS_DB_Detail, {
        /// <field>
        /// Called when a new nIBBS_DB_Detail is created.
        /// <br/>created(msls.application.NIBBS_DB_Detail entity)
        /// </field>
        created: [lightSwitchApplication.NIBBS_DB_Detail]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconDetail, {
        /// <field>
        /// Called when a new reconDetail is created.
        /// <br/>created(msls.application.ReconDetail entity)
        /// </field>
        created: [lightSwitchApplication.ReconDetail]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconField, {
        /// <field>
        /// Called when a new reconField is created.
        /// <br/>created(msls.application.ReconField entity)
        /// </field>
        created: [lightSwitchApplication.ReconField]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconItemStatu, {
        /// <field>
        /// Called when a new reconItemStatu is created.
        /// <br/>created(msls.application.ReconItemStatu entity)
        /// </field>
        created: [lightSwitchApplication.ReconItemStatu]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconProcess, {
        /// <field>
        /// Called when a new reconProcess is created.
        /// <br/>created(msls.application.ReconProcess entity)
        /// </field>
        created: [lightSwitchApplication.ReconProcess]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconProcessStep, {
        /// <field>
        /// Called when a new reconProcessStep is created.
        /// <br/>created(msls.application.ReconProcessStep entity)
        /// </field>
        created: [lightSwitchApplication.ReconProcessStep]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconSource, {
        /// <field>
        /// Called when a new reconSource is created.
        /// <br/>created(msls.application.ReconSource entity)
        /// </field>
        created: [lightSwitchApplication.ReconSource]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconSourceType, {
        /// <field>
        /// Called when a new reconSourceType is created.
        /// <br/>created(msls.application.ReconSourceType entity)
        /// </field>
        created: [lightSwitchApplication.ReconSourceType]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconStatu, {
        /// <field>
        /// Called when a new reconStatu is created.
        /// <br/>created(msls.application.ReconStatu entity)
        /// </field>
        created: [lightSwitchApplication.ReconStatu]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconSummary, {
        /// <field>
        /// Called when a new reconSummary is created.
        /// <br/>created(msls.application.ReconSummary entity)
        /// </field>
        created: [lightSwitchApplication.ReconSummary]
    });

    msls._addEntryPoints(lightSwitchApplication.ReconType, {
        /// <field>
        /// Called when a new reconType is created.
        /// <br/>created(msls.application.ReconType entity)
        /// </field>
        created: [lightSwitchApplication.ReconType]
    });

    msls._addEntryPoints(lightSwitchApplication.RuleType, {
        /// <field>
        /// Called when a new ruleType is created.
        /// <br/>created(msls.application.RuleType entity)
        /// </field>
        created: [lightSwitchApplication.RuleType]
    });

    msls._addEntryPoints(lightSwitchApplication.SkyeImportDetail, {
        /// <field>
        /// Called when a new skyeImportDetail is created.
        /// <br/>created(msls.application.SkyeImportDetail entity)
        /// </field>
        created: [lightSwitchApplication.SkyeImportDetail]
    });

    msls._addEntryPoints(lightSwitchApplication.SkyeImportHeader, {
        /// <field>
        /// Called when a new skyeImportHeader is created.
        /// <br/>created(msls.application.SkyeImportHeader entity)
        /// </field>
        created: [lightSwitchApplication.SkyeImportHeader]
    });

    msls._addEntryPoints(lightSwitchApplication.Synonym, {
        /// <field>
        /// Called when a new synonym is created.
        /// <br/>created(msls.application.Synonym entity)
        /// </field>
        created: [lightSwitchApplication.Synonym]
    });

    msls._addEntryPoints(lightSwitchApplication.SystemField, {
        /// <field>
        /// Called when a new systemField is created.
        /// <br/>created(msls.application.SystemField entity)
        /// </field>
        created: [lightSwitchApplication.SystemField]
    });

    msls._addEntryPoints(lightSwitchApplication.vwReconProcessStatu, {
        /// <field>
        /// Called when a new vwReconProcessStatu is created.
        /// <br/>created(msls.application.vwReconProcessStatu entity)
        /// </field>
        created: [lightSwitchApplication.vwReconProcessStatu]
    });

}(msls.application));
