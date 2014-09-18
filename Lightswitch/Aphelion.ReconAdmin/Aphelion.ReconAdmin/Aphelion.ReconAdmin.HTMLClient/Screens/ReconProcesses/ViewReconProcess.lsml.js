/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconProcess.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconProcess.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconProcess." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

