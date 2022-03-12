sap.ui.define([
    "sap/ui/core/mvc/ControllerExtension"
], (ControllerExtension) => {
    "use strict";

    return ControllerExtension.extend("my.bookshop.ext.controller.ObjectPageExtension", {
        override: {
            onInit: function() {
                console.log("onInit in ObjectPageExtension");
            }
        }
    });
});