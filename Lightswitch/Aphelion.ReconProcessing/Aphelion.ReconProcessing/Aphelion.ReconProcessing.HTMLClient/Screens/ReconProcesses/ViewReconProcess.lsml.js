/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewReconProcess.created = function (screen) {

    var x = 1;
    // Write code here.
  //var name = contentItem.screen.ReconProcess.details.getModel()[':@SummaryProperty'].property.name;
    //contentItem.dataBind("screen.ReconProcess." + name, function (value) {
    //    contentItem.screen.details.displayName = value;
    //});
  
};


myapp.ViewReconProcess.ProcessRecon_execute = function (screen) {
    var x = 1;
    if (!screen.isExecuting) {
        screen.isExecuting = true;
        var url = "/api/ReconProcess/" + screen.ReconProcess.ID;
        $.getJSON(url, function (data) {

            var y = data;
            screen.isExecuting = false;
        }
        );
    }


    /*
    $.ajax({
        dataType: "int",
        data:{d:1},
        success: postSave,
        url: "/api/FileImport",
        type: "PUT" 
    });
    function postSave(data) {
        var x = 1;
    }
    */

};