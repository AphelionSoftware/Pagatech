/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewImportedFile.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ImportedFile.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ImportedFile." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}


myapp.ViewImportedFile.Reconcile_execute = function (screen) {
    /*$.getJSON("/api/TodaysReportingPeriod", function (data) {
        myapp.activeDataWorkspace.MeerkatData.ReportingPeriods_SingleOrDefault(data).execute().then(function (reportingPeriod) {
            screen.MaxReportingRangeID = reportingPeriod.results[0].EndDateID;
            screen.ReportingPeriodsFiltered.load().then(function () {
                screen.MilestoneValue.setReportingPeriod(reportingPeriod.results[0]);
                //screen.PreviousDataVersion = screen.DataVersionSorted.selectedItem.DataVersion_ID;
            });
        });
    });*/

    /*
    $.ajax({
 dataType: "xml",
 data: d,
 success: postSave,
 url: saveURL,
 type: "PUT",
 beforeSend: diagnoser.credManager.getAuthSetterCurrent()
 });*/

    $.ajax({
        data: 4,
        url: "/api/FileImportController",
        type: "PUT"
    });
};