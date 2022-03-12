sap.ui.define([
    "sap/ui/core/mvc/ControllerExtension"
], (ControllerExtension) => {
    "use strict";

    return ControllerExtension.extend("my.bookshop.ext.controller.ListReportExtension", {
        override: {
            onInit: function() {
                console.log("onInit in ListReportExtension");
            }
        }
    });
});