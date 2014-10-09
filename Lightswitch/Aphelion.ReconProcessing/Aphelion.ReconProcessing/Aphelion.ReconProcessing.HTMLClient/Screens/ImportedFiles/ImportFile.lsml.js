/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ImportFile.Uploader_render = function (element, contentItem) {
    createImageUploader(element, contentItem, "max-width: 300px; max-height: 300px");

};
myapp.ImportFile.created = function (screen) {
    msls.application.lightswitchTools.configureCaptureForm(screen);

};