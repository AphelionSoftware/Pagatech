/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewSystemField.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.SystemField.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.SystemField." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

