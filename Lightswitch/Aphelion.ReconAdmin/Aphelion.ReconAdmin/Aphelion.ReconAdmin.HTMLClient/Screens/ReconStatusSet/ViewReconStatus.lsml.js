/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconStatus.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconStatu.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconStatu." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

