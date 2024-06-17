sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ccmdashboardmock/CCMDashboarditemAttributes/test/integration/FirstJourney',
		'ccmdashboardmock/CCMDashboarditemAttributes/test/integration/pages/ItemsList',
		'ccmdashboardmock/CCMDashboarditemAttributes/test/integration/pages/ItemsObjectPage',
		'ccmdashboardmock/CCMDashboarditemAttributes/test/integration/pages/ItemAttributesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItemsList, ItemsObjectPage, ItemAttributesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ccmdashboardmock/CCMDashboarditemAttributes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheItemsList: ItemsList,
					onTheItemsObjectPage: ItemsObjectPage,
					onTheItemAttributesObjectPage: ItemAttributesObjectPage
                }
            },
            opaJourney.run
        );
    }
);