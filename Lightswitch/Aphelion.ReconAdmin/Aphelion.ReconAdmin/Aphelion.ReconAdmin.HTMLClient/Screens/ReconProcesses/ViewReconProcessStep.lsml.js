/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconProcessStep.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconProcessStep.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconProcessStep." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

