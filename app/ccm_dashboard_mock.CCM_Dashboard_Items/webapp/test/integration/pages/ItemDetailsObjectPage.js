sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ccmdashboardmock.CCMDashboardItems',
            componentId: 'ItemDetailsObjectPage',
            contextPath: '/Items/todet'
        },
        CustomPageDefinitions
    );
});