/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconItemStatu.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconItemStatu.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconItemStatu." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

