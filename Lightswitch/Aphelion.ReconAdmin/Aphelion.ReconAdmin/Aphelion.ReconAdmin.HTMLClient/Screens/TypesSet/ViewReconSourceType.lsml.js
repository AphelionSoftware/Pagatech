/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconSourceType.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconSourceType.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconSourceType." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

