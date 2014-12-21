/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

