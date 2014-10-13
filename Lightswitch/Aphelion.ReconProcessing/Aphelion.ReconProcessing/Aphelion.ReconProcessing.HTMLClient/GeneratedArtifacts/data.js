/// <reference path="../Scripts/msls.js" />

window.myapp = msls.application;

(function (lightSwitchApplication) {

    var $Entity = msls.Entity,
        $DataService = msls.DataService,
        $DataWorkspace = msls.DataWorkspace,
        $defineEntity = msls._defineEntity,
        $defineDataService = msls._defineDataService,
        $defineDataWorkspace = msls._defineDataWorkspace,
        $DataServiceQuery = msls.DataServiceQuery,
        $toODataString = msls._toODataString;

    function FileDefinition(entitySet) {
        /// <summary>
        /// Represents the FileDefinition entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this fileDefinition.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this fileDefinition.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this fileDefinition.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this fileDefinition.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this fileDefinition.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this fileDefinition.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this fileDefinition.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this fileDefinition.
        /// </field>
        /// <field name="FileType" type="msls.application.FileType">
        /// Gets or sets the fileType for this fileDefinition.
        /// </field>
        /// <field name="FileSections" type="msls.EntityCollection" elementType="msls.application.FileSection">
        /// Gets the fileSections for this fileDefinition.
        /// </field>
        /// <field name="ImportedFiles" type="msls.EntityCollection" elementType="msls.application.ImportedFile">
        /// Gets the importedFiles for this fileDefinition.
        /// </field>
        /// <field name="ReconSource" type="msls.application.ReconSource">
        /// Gets or sets the reconSource for this fileDefinition.
        /// </field>
        /// <field name="details" type="msls.application.FileDefinition.Details">
        /// Gets the details for this fileDefinition.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function FileField(entitySet) {
        /// <summary>
        /// Represents the FileField entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this fileField.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this fileField.
        /// </field>
        /// <field name="ColumnName" type="String">
        /// Gets or sets the columnName for this fileField.
        /// </field>
        /// <field name="Position" type="Number">
        /// Gets or sets the position for this fileField.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this fileField.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this fileField.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this fileField.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this fileField.
        /// </field>
        /// <field name="FileSection" type="msls.application.FileSection">
        /// Gets or sets the fileSection for this fileField.
        /// </field>
        /// <field name="details" type="msls.application.FileField.Details">
        /// Gets the details for this fileField.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function FileSection(entitySet) {
        /// <summary>
        /// Represents the FileSection entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this fileSection.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this fileSection.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this fileSection.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this fileSection.
        /// </field>
        /// <field name="StagingTableSchema" type="String">
        /// Gets or sets the stagingTableSchema for this fileSection.
        /// </field>
        /// <field name="StagingTableName" type="String">
        /// Gets or sets the stagingTableName for this fileSection.
        /// </field>
        /// <field name="StartRow" type="Number">
        /// Gets or sets the startRow for this fileSection.
        /// </field>
        /// <field name="StartColumn" type="Number">
        /// Gets or sets the startColumn for this fileSection.
        /// </field>
        /// <field name="NumRows" type="Number">
        /// Gets or sets the numRows for this fileSection.
        /// </field>
        /// <field name="NumColumns" type="Number">
        /// Gets or sets the numColumns for this fileSection.
        /// </field>
        /// <field name="Pivot" type="Boolean">
        /// Gets or sets the pivot for this fileSection.
        /// </field>
        /// <field name="HeaderRow" type="Boolean">
        /// Gets or sets the headerRow for this fileSection.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this fileSection.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this fileSection.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this fileSection.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this fileSection.
        /// </field>
        /// <field name="FileFields" type="msls.EntityCollection" elementType="msls.application.FileField">
        /// Gets the fileFields for this fileSection.
        /// </field>
        /// <field name="FileDefinition" type="msls.application.FileDefinition">
        /// Gets or sets the fileDefinition for this fileSection.
        /// </field>
        /// <field name="ReconProcessSteps" type="msls.EntityCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps for this fileSection.
        /// </field>
        /// <field name="ReconProcessSteps1" type="msls.EntityCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps1 for this fileSection.
        /// </field>
        /// <field name="details" type="msls.application.FileSection.Details">
        /// Gets the details for this fileSection.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function FileType(entitySet) {
        /// <summary>
        /// Represents the FileType entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this fileType.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this fileType.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this fileType.
        /// </field>
        /// <field name="Extension" type="String">
        /// Gets or sets the extension for this fileType.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this fileType.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this fileType.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this fileType.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this fileType.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this fileType.
        /// </field>
        /// <field name="FileDefinitions" type="msls.EntityCollection" elementType="msls.application.FileDefinition">
        /// Gets the fileDefinitions for this fileType.
        /// </field>
        /// <field name="details" type="msls.application.FileType.Details">
        /// Gets the details for this fileType.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ImportedFile(entitySet) {
        /// <summary>
        /// Represents the ImportedFile entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this importedFile.
        /// </param>
        /// <field name="FileName" type="String">
        /// Gets or sets the fileName for this importedFile.
        /// </field>
        /// <field name="FileDefinition" type="msls.application.FileDefinition">
        /// Gets or sets the fileDefinition for this importedFile.
        /// </field>
        /// <field name="ReconSummary" type="msls.application.ReconSummary">
        /// Gets or sets the reconSummary for this importedFile.
        /// </field>
        /// <field name="UploadedFileName" type="String">
        /// Gets or sets the uploadedFileName for this importedFile.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this importedFile.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this importedFile.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this importedFile.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this importedFile.
        /// </field>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this importedFile.
        /// </field>
        /// <field name="FileContents" type="String">
        /// Gets or sets the fileContents for this importedFile.
        /// </field>
        /// <field name="details" type="msls.application.ImportedFile.Details">
        /// Gets the details for this importedFile.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconDetail(entitySet) {
        /// <summary>
        /// Represents the ReconDetail entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconDetail.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconDetail.
        /// </field>
        /// <field name="ReconSummaryID" type="Number">
        /// Gets or sets the reconSummaryID for this reconDetail.
        /// </field>
        /// <field name="ReconItemStatusID" type="Number">
        /// Gets or sets the reconItemStatusID for this reconDetail.
        /// </field>
        /// <field name="Value" type="String">
        /// Gets or sets the value for this reconDetail.
        /// </field>
        /// <field name="SourceKey" type="String">
        /// Gets or sets the sourceKey for this reconDetail.
        /// </field>
        /// <field name="MatchedReconDetailID" type="Number">
        /// Gets or sets the matchedReconDetailID for this reconDetail.
        /// </field>
        /// <field name="FileDetailID" type="Number">
        /// Gets or sets the fileDetailID for this reconDetail.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconDetail.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconDetail.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconDetail.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconDetail.
        /// </field>
        /// <field name="details" type="msls.application.ReconDetail.Details">
        /// Gets the details for this reconDetail.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconItemStatu(entitySet) {
        /// <summary>
        /// Represents the ReconItemStatu entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconItemStatu.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconItemStatu.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconItemStatu.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconItemStatu.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconItemStatu.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconItemStatu.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconItemStatu.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconItemStatu.
        /// </field>
        /// <field name="details" type="msls.application.ReconItemStatu.Details">
        /// Gets the details for this reconItemStatu.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconProcess(entitySet) {
        /// <summary>
        /// Represents the ReconProcess entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconProcess.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconProcess.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconProcess.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconProcess.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconProcess.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconProcess.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconProcess.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconProcess.
        /// </field>
        /// <field name="ReconProcessSteps" type="msls.EntityCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps for this reconProcess.
        /// </field>
        /// <field name="details" type="msls.application.ReconProcess.Details">
        /// Gets the details for this reconProcess.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconProcessStep(entitySet) {
        /// <summary>
        /// Represents the ReconProcessStep entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconProcessStep.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconProcessStep.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconProcessStep.
        /// </field>
        /// <field name="Order" type="Number">
        /// Gets or sets the order for this reconProcessStep.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconProcessStep.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconProcessStep.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconProcessStep.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconProcessStep.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconProcessStep.
        /// </field>
        /// <field name="FileSection" type="msls.application.FileSection">
        /// Gets or sets the fileSection for this reconProcessStep.
        /// </field>
        /// <field name="FileSection1" type="msls.application.FileSection">
        /// Gets or sets the fileSection1 for this reconProcessStep.
        /// </field>
        /// <field name="ReconProcess" type="msls.application.ReconProcess">
        /// Gets or sets the reconProcess for this reconProcessStep.
        /// </field>
        /// <field name="ReconType" type="msls.application.ReconType">
        /// Gets or sets the reconType for this reconProcessStep.
        /// </field>
        /// <field name="ReconSummaries" type="msls.EntityCollection" elementType="msls.application.ReconSummary">
        /// Gets the reconSummaries for this reconProcessStep.
        /// </field>
        /// <field name="details" type="msls.application.ReconProcessStep.Details">
        /// Gets the details for this reconProcessStep.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconSource(entitySet) {
        /// <summary>
        /// Represents the ReconSource entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconSource.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconSource.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconSource.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconSource.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconSource.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconSource.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconSource.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconSource.
        /// </field>
        /// <field name="ReconSourceType" type="msls.application.ReconSourceType">
        /// Gets or sets the reconSourceType for this reconSource.
        /// </field>
        /// <field name="FileDefinitions" type="msls.EntityCollection" elementType="msls.application.FileDefinition">
        /// Gets the fileDefinitions for this reconSource.
        /// </field>
        /// <field name="details" type="msls.application.ReconSource.Details">
        /// Gets the details for this reconSource.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconSourceType(entitySet) {
        /// <summary>
        /// Represents the ReconSourceType entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconSourceType.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconSourceType.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconSourceType.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconSourceType.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconSourceType.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconSourceType.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconSourceType.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconSourceType.
        /// </field>
        /// <field name="ReconSources" type="msls.EntityCollection" elementType="msls.application.ReconSource">
        /// Gets the reconSources for this reconSourceType.
        /// </field>
        /// <field name="details" type="msls.application.ReconSourceType.Details">
        /// Gets the details for this reconSourceType.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconStatu(entitySet) {
        /// <summary>
        /// Represents the ReconStatu entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconStatu.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconStatu.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconStatu.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconStatu.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconStatu.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconStatu.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconStatu.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconStatu.
        /// </field>
        /// <field name="ReconSummaries" type="msls.EntityCollection" elementType="msls.application.ReconSummary">
        /// Gets the reconSummaries for this reconStatu.
        /// </field>
        /// <field name="details" type="msls.application.ReconStatu.Details">
        /// Gets the details for this reconStatu.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconSummary(entitySet) {
        /// <summary>
        /// Represents the ReconSummary entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconSummary.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconSummary.
        /// </field>
        /// <field name="ReconStart" type="Date">
        /// Gets or sets the reconStart for this reconSummary.
        /// </field>
        /// <field name="ReconEnd" type="Date">
        /// Gets or sets the reconEnd for this reconSummary.
        /// </field>
        /// <field name="SourceCount" type="Number">
        /// Gets or sets the sourceCount for this reconSummary.
        /// </field>
        /// <field name="DestCount" type="Number">
        /// Gets or sets the destCount for this reconSummary.
        /// </field>
        /// <field name="SourceTotal" type="String">
        /// Gets or sets the sourceTotal for this reconSummary.
        /// </field>
        /// <field name="DestTotal" type="String">
        /// Gets or sets the destTotal for this reconSummary.
        /// </field>
        /// <field name="ReconDate" type="Date">
        /// Gets or sets the reconDate for this reconSummary.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconSummary.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconSummary.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconSummary.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconSummary.
        /// </field>
        /// <field name="ImportedFiles" type="msls.EntityCollection" elementType="msls.application.ImportedFile">
        /// Gets the importedFiles for this reconSummary.
        /// </field>
        /// <field name="ReconProcessStep" type="msls.application.ReconProcessStep">
        /// Gets or sets the reconProcessStep for this reconSummary.
        /// </field>
        /// <field name="ReconStatu" type="msls.application.ReconStatu">
        /// Gets or sets the reconStatu for this reconSummary.
        /// </field>
        /// <field name="details" type="msls.application.ReconSummary.Details">
        /// Gets the details for this reconSummary.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function ReconType(entitySet) {
        /// <summary>
        /// Represents the ReconType entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this reconType.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this reconType.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this reconType.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this reconType.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this reconType.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this reconType.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this reconType.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this reconType.
        /// </field>
        /// <field name="ReconProcessSteps" type="msls.EntityCollection" elementType="msls.application.ReconProcessStep">
        /// Gets the reconProcessSteps for this reconType.
        /// </field>
        /// <field name="details" type="msls.application.ReconType.Details">
        /// Gets the details for this reconType.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function SkyeImportDetail(entitySet) {
        /// <summary>
        /// Represents the SkyeImportDetail entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this skyeImportDetail.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this skyeImportDetail.
        /// </field>
        /// <field name="TransactionDate" type="String">
        /// Gets or sets the transactionDate for this skyeImportDetail.
        /// </field>
        /// <field name="ValueDate" type="String">
        /// Gets or sets the valueDate for this skyeImportDetail.
        /// </field>
        /// <field name="TransactionReferenceNo" type="String">
        /// Gets or sets the transactionReferenceNo for this skyeImportDetail.
        /// </field>
        /// <field name="Description" type="String">
        /// Gets or sets the description for this skyeImportDetail.
        /// </field>
        /// <field name="Debit" type="String">
        /// Gets or sets the debit for this skyeImportDetail.
        /// </field>
        /// <field name="Credit" type="String">
        /// Gets or sets the credit for this skyeImportDetail.
        /// </field>
        /// <field name="Balance" type="String">
        /// Gets or sets the balance for this skyeImportDetail.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this skyeImportDetail.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this skyeImportDetail.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this skyeImportDetail.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this skyeImportDetail.
        /// </field>
        /// <field name="details" type="msls.application.SkyeImportDetail.Details">
        /// Gets the details for this skyeImportDetail.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function SkyeImportHeader(entitySet) {
        /// <summary>
        /// Represents the SkyeImportHeader entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this skyeImportHeader.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this skyeImportHeader.
        /// </field>
        /// <field name="CustomerNo" type="String">
        /// Gets or sets the customerNo for this skyeImportHeader.
        /// </field>
        /// <field name="AccountNumber" type="String">
        /// Gets or sets the accountNumber for this skyeImportHeader.
        /// </field>
        /// <field name="AccountCurrency" type="String">
        /// Gets or sets the accountCurrency for this skyeImportHeader.
        /// </field>
        /// <field name="OpeningBalance" type="String">
        /// Gets or sets the openingBalance for this skyeImportHeader.
        /// </field>
        /// <field name="ClosingBalance" type="String">
        /// Gets or sets the closingBalance for this skyeImportHeader.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this skyeImportHeader.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this skyeImportHeader.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this skyeImportHeader.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this skyeImportHeader.
        /// </field>
        /// <field name="details" type="msls.application.SkyeImportHeader.Details">
        /// Gets the details for this skyeImportHeader.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function SystemField(entitySet) {
        /// <summary>
        /// Represents the SystemField entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this systemField.
        /// </param>
        /// <field name="ID" type="Number">
        /// Gets or sets the iD for this systemField.
        /// </field>
        /// <field name="TableSchema" type="String">
        /// Gets or sets the tableSchema for this systemField.
        /// </field>
        /// <field name="TableName" type="String">
        /// Gets or sets the tableName for this systemField.
        /// </field>
        /// <field name="ColumnName" type="String">
        /// Gets or sets the columnName for this systemField.
        /// </field>
        /// <field name="FieldTypeID" type="Number">
        /// Gets or sets the fieldTypeID for this systemField.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this systemField.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this systemField.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this systemField.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this systemField.
        /// </field>
        /// <field name="details" type="msls.application.SystemField.Details">
        /// Gets the details for this systemField.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function GlobalSetting(entitySet) {
        /// <summary>
        /// Represents the GlobalSetting entity type.
        /// </summary>
        /// <param name="entitySet" type="msls.EntitySet" optional="true">
        /// The entity set that should contain this globalSetting.
        /// </param>
        /// <field name="GlobalSettings_ID" type="Number">
        /// Gets or sets the globalSettings_ID for this globalSetting.
        /// </field>
        /// <field name="Code" type="String">
        /// Gets or sets the code for this globalSetting.
        /// </field>
        /// <field name="Name" type="String">
        /// Gets or sets the name for this globalSetting.
        /// </field>
        /// <field name="Value" type="String">
        /// Gets or sets the value for this globalSetting.
        /// </field>
        /// <field name="Active" type="Number">
        /// Gets or sets the active for this globalSetting.
        /// </field>
        /// <field name="sys_CreatedBy" type="String">
        /// Gets or sets the sys_CreatedBy for this globalSetting.
        /// </field>
        /// <field name="sys_CreatedOn" type="Date">
        /// Gets or sets the sys_CreatedOn for this globalSetting.
        /// </field>
        /// <field name="sys_ModifiedBy" type="String">
        /// Gets or sets the sys_ModifiedBy for this globalSetting.
        /// </field>
        /// <field name="sys_ModifiedOn" type="Date">
        /// Gets or sets the sys_ModifiedOn for this globalSetting.
        /// </field>
        /// <field name="details" type="msls.application.GlobalSetting.Details">
        /// Gets the details for this globalSetting.
        /// </field>
        $Entity.call(this, entitySet);
    }

    function PagaReconData(dataWorkspace) {
        /// <summary>
        /// Represents the PagaReconData data service.
        /// </summary>
        /// <param name="dataWorkspace" type="msls.DataWorkspace">
        /// The data workspace that created this data service.
        /// </param>
        /// <field name="FileDefinitions" type="msls.EntitySet">
        /// Gets the FileDefinitions entity set.
        /// </field>
        /// <field name="FileFields" type="msls.EntitySet">
        /// Gets the FileFields entity set.
        /// </field>
        /// <field name="FileSections" type="msls.EntitySet">
        /// Gets the FileSections entity set.
        /// </field>
        /// <field name="FileTypes" type="msls.EntitySet">
        /// Gets the FileTypes entity set.
        /// </field>
        /// <field name="ImportedFiles" type="msls.EntitySet">
        /// Gets the ImportedFiles entity set.
        /// </field>
        /// <field name="ReconDetails" type="msls.EntitySet">
        /// Gets the ReconDetails entity set.
        /// </field>
        /// <field name="ReconItemStatus" type="msls.EntitySet">
        /// Gets the ReconItemStatus entity set.
        /// </field>
        /// <field name="ReconProcesses" type="msls.EntitySet">
        /// Gets the ReconProcesses entity set.
        /// </field>
        /// <field name="ReconProcessSteps" type="msls.EntitySet">
        /// Gets the ReconProcessSteps entity set.
        /// </field>
        /// <field name="ReconSources" type="msls.EntitySet">
        /// Gets the ReconSources entity set.
        /// </field>
        /// <field name="ReconSourceTypes" type="msls.EntitySet">
        /// Gets the ReconSourceTypes entity set.
        /// </field>
        /// <field name="ReconStatus" type="msls.EntitySet">
        /// Gets the ReconStatus entity set.
        /// </field>
        /// <field name="ReconSummaries" type="msls.EntitySet">
        /// Gets the ReconSummaries entity set.
        /// </field>
        /// <field name="ReconTypes" type="msls.EntitySet">
        /// Gets the ReconTypes entity set.
        /// </field>
        /// <field name="SkyeImportDetails" type="msls.EntitySet">
        /// Gets the SkyeImportDetails entity set.
        /// </field>
        /// <field name="SkyeImportHeaders" type="msls.EntitySet">
        /// Gets the SkyeImportHeaders entity set.
        /// </field>
        /// <field name="SystemFields" type="msls.EntitySet">
        /// Gets the SystemFields entity set.
        /// </field>
        /// <field name="GlobalSettings" type="msls.EntitySet">
        /// Gets the GlobalSettings entity set.
        /// </field>
        /// <field name="details" type="msls.application.PagaReconData.Details">
        /// Gets the details for this data service.
        /// </field>
        $DataService.call(this, dataWorkspace);
    };
    function DataWorkspace() {
        /// <summary>
        /// Represents the data workspace.
        /// </summary>
        /// <field name="PagaReconData" type="msls.application.PagaReconData">
        /// Gets the PagaReconData data service.
        /// </field>
        /// <field name="details" type="msls.application.DataWorkspace.Details">
        /// Gets the details for this data workspace.
        /// </field>
        $DataWorkspace.call(this);
    };

    msls._addToNamespace("msls.application", {

        FileDefinition: $defineEntity(FileDefinition, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "FileType", kind: "reference", type: FileType },
            { name: "FileSections", kind: "collection", elementType: FileSection },
            { name: "ImportedFiles", kind: "collection", elementType: ImportedFile },
            { name: "ReconSource", kind: "reference", type: ReconSource }
        ]),

        FileField: $defineEntity(FileField, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "ColumnName", type: String },
            { name: "Position", type: Number },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "FileSection", kind: "reference", type: FileSection }
        ]),

        FileSection: $defineEntity(FileSection, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "StagingTableSchema", type: String },
            { name: "StagingTableName", type: String },
            { name: "StartRow", type: Number },
            { name: "StartColumn", type: Number },
            { name: "NumRows", type: Number },
            { name: "NumColumns", type: Number },
            { name: "Pivot", type: Boolean },
            { name: "HeaderRow", type: Boolean },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "FileFields", kind: "collection", elementType: FileField },
            { name: "FileDefinition", kind: "reference", type: FileDefinition },
            { name: "ReconProcessSteps", kind: "collection", elementType: ReconProcessStep },
            { name: "ReconProcessSteps1", kind: "collection", elementType: ReconProcessStep }
        ]),

        FileType: $defineEntity(FileType, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Extension", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "FileDefinitions", kind: "collection", elementType: FileDefinition }
        ]),

        ImportedFile: $defineEntity(ImportedFile, [
            { name: "FileName", type: String },
            { name: "FileDefinition", kind: "reference", type: FileDefinition },
            { name: "ReconSummary", kind: "reference", type: ReconSummary },
            { name: "UploadedFileName", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ID", type: Number, isReadOnly: true },
            { name: "FileContents", type: String }
        ]),

        ReconDetail: $defineEntity(ReconDetail, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "ReconSummaryID", type: Number },
            { name: "ReconItemStatusID", type: Number },
            { name: "Value", type: String },
            { name: "SourceKey", type: String },
            { name: "MatchedReconDetailID", type: Number },
            { name: "FileDetailID", type: Number },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        ReconItemStatu: $defineEntity(ReconItemStatu, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        ReconProcess: $defineEntity(ReconProcess, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ReconProcessSteps", kind: "collection", elementType: ReconProcessStep }
        ]),

        ReconProcessStep: $defineEntity(ReconProcessStep, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Order", type: Number },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "FileSection", kind: "reference", type: FileSection },
            { name: "FileSection1", kind: "reference", type: FileSection },
            { name: "ReconProcess", kind: "reference", type: ReconProcess },
            { name: "ReconType", kind: "reference", type: ReconType },
            { name: "ReconSummaries", kind: "collection", elementType: ReconSummary }
        ]),

        ReconSource: $defineEntity(ReconSource, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ReconSourceType", kind: "reference", type: ReconSourceType },
            { name: "FileDefinitions", kind: "collection", elementType: FileDefinition }
        ]),

        ReconSourceType: $defineEntity(ReconSourceType, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ReconSources", kind: "collection", elementType: ReconSource }
        ]),

        ReconStatu: $defineEntity(ReconStatu, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ReconSummaries", kind: "collection", elementType: ReconSummary }
        ]),

        ReconSummary: $defineEntity(ReconSummary, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "ReconStart", type: Date },
            { name: "ReconEnd", type: Date },
            { name: "SourceCount", type: Number },
            { name: "DestCount", type: Number },
            { name: "SourceTotal", type: String },
            { name: "DestTotal", type: String },
            { name: "ReconDate", type: Date },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ImportedFiles", kind: "collection", elementType: ImportedFile },
            { name: "ReconProcessStep", kind: "reference", type: ReconProcessStep },
            { name: "ReconStatu", kind: "reference", type: ReconStatu }
        ]),

        ReconType: $defineEntity(ReconType, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date },
            { name: "ReconProcessSteps", kind: "collection", elementType: ReconProcessStep }
        ]),

        SkyeImportDetail: $defineEntity(SkyeImportDetail, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "TransactionDate", type: String },
            { name: "ValueDate", type: String },
            { name: "TransactionReferenceNo", type: String },
            { name: "Description", type: String },
            { name: "Debit", type: String },
            { name: "Credit", type: String },
            { name: "Balance", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        SkyeImportHeader: $defineEntity(SkyeImportHeader, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "CustomerNo", type: String },
            { name: "AccountNumber", type: String },
            { name: "AccountCurrency", type: String },
            { name: "OpeningBalance", type: String },
            { name: "ClosingBalance", type: String },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        SystemField: $defineEntity(SystemField, [
            { name: "ID", type: Number, isReadOnly: true },
            { name: "TableSchema", type: String },
            { name: "TableName", type: String },
            { name: "ColumnName", type: String },
            { name: "FieldTypeID", type: Number },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        GlobalSetting: $defineEntity(GlobalSetting, [
            { name: "GlobalSettings_ID", type: Number, isReadOnly: true },
            { name: "Code", type: String },
            { name: "Name", type: String },
            { name: "Value", type: String },
            { name: "Active", type: Number },
            { name: "sys_CreatedBy", type: String },
            { name: "sys_CreatedOn", type: Date },
            { name: "sys_ModifiedBy", type: String },
            { name: "sys_ModifiedOn", type: Date }
        ]),

        PagaReconData: $defineDataService(PagaReconData, lightSwitchApplication.rootUri + "/PagaReconData.svc", [
            { name: "FileDefinitions", elementType: FileDefinition },
            { name: "FileFields", elementType: FileField },
            { name: "FileSections", elementType: FileSection },
            { name: "FileTypes", elementType: FileType },
            { name: "ImportedFiles", elementType: ImportedFile },
            { name: "ReconDetails", elementType: ReconDetail },
            { name: "ReconItemStatus", elementType: ReconItemStatu },
            { name: "ReconProcesses", elementType: ReconProcess },
            { name: "ReconProcessSteps", elementType: ReconProcessStep },
            { name: "ReconSources", elementType: ReconSource },
            { name: "ReconSourceTypes", elementType: ReconSourceType },
            { name: "ReconStatus", elementType: ReconStatu },
            { name: "ReconSummaries", elementType: ReconSummary },
            { name: "ReconTypes", elementType: ReconType },
            { name: "SkyeImportDetails", elementType: SkyeImportDetail },
            { name: "SkyeImportHeaders", elementType: SkyeImportHeader },
            { name: "SystemFields", elementType: SystemField },
            { name: "GlobalSettings", elementType: GlobalSetting }
        ], [
            {
                name: "FileDefinitions_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.FileDefinitions },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/FileDefinitions(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "FileFields_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.FileFields },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/FileFields(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "FileSections_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.FileSections },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/FileSections(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "FileTypes_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.FileTypes },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/FileTypes(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ImportedFiles_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ImportedFiles },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ImportedFiles(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ImportedFilesUnreconciled", value: function (ReconSourcce) {
                    return new $DataServiceQuery({ _entitySet: this.ImportedFiles },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ImportedFilesUnreconciled()",
                        {
                            ReconSourcce: $toODataString(ReconSourcce, "Int32?")
                        });
                }
            },
            {
                name: "ReconDetails_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconDetails },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconDetails(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconItemStatus_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconItemStatus },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconItemStatus(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconProcesses_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconProcesses },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconProcesses(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconProcessSteps_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconProcessSteps },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconProcessSteps(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconSources_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconSources },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconSources(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconSourceTypes_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconSourceTypes },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconSourceTypes(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconStatus_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconStatus },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconStatus(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconSummaries_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconSummaries },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconSummaries(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "ReconTypes_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.ReconTypes },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/ReconTypes(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "SkyeImportDetails_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.SkyeImportDetails },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/SkyeImportDetails(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "SkyeImportHeaders_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.SkyeImportHeaders },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/SkyeImportHeaders(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "SystemFields_SingleOrDefault", value: function (ID) {
                    return new $DataServiceQuery({ _entitySet: this.SystemFields },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/SystemFields(" + "ID=" + $toODataString(ID, "Int32?") + ")"
                    );
                }
            },
            {
                name: "GlobalSettings_SingleOrDefault", value: function (GlobalSettings_ID) {
                    return new $DataServiceQuery({ _entitySet: this.GlobalSettings },
                        lightSwitchApplication.rootUri + "/PagaReconData.svc" + "/GlobalSettings(" + "GlobalSettings_ID=" + $toODataString(GlobalSettings_ID, "Int32?") + ")"
                    );
                }
            }
        ]),

        DataWorkspace: $defineDataWorkspace(DataWorkspace, [
            { name: "PagaReconData", type: PagaReconData }
        ])

    });

}(msls.application));
