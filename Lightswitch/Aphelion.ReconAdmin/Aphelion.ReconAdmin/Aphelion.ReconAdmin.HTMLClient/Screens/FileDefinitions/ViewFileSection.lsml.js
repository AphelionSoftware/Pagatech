/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewFileSection.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.FileSection.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.FileSection." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

