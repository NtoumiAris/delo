/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"product_list_eleni/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
