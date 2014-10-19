/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewImportedFile.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ImportedFile.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ImportedFile." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}


myapp.ViewImportedFile.Reconcile_execute = function (screen) {
    //$('LoadingStatus')[0].innerText = "Starting import";


    var url = "/api/FileImport/" + screen.ImportedFile.ID;
    $.getJSON(url, function (data) {

        var y = data;
    }
    );



    /*$.ajax({
        url: "/api/FileImport/4",
        type: "PUT"
    });
    $.ajax({
        dataType: "int",
        data: 4,
        url: "/api/FileImport/4",
        type: "PUT"
    });
    */
};
myapp.ViewImportedFile.Results_render = function (element, contentItem) {
    div = $("<div class='LoadingStatus' id='LoadingStatus' style='font-size:20px'>Not started</div>");
    $(div).appendTo($(element));

};