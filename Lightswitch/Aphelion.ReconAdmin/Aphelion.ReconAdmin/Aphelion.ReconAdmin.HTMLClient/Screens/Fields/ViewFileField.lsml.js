/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewFileField.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.FileField.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.FileField." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

