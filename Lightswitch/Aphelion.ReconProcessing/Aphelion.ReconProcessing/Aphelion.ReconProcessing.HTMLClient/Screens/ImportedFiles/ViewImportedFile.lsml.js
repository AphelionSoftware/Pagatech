/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewImportedFile.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ImportedFile.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ImportedFile." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

