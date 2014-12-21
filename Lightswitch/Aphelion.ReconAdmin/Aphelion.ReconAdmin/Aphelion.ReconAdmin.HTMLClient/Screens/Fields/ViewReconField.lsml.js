/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconField.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ReconField.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ReconField." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

