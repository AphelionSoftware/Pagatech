/// <reference path="~/GeneratedArtifacts/viewModel.js" />
/// <reference path="~/Scripts/image-uploader.js" />

myapp.ImportFile.Uploader_render = function (element, contentItem) {
 
};
myapp.ImportFile.created = function (screen) {
    msls.application.lightswitchTools.configureCaptureForm(screen);

};
myapp.ImportFile.FileContents_render = function (element, contentItem) {
    // Write code here.
    createImageUploader(element, contentItem, "max-width: 300px; max-height: 300px");

};