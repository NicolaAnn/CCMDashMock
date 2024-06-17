sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ccmdashboardmock/CCMDashboardItems/test/integration/FirstJourney',
		'ccmdashboardmock/CCMDashboardItems/test/integration/pages/ItemsList',
		'ccmdashboardmock/CCMDashboardItems/test/integration/pages/ItemsObjectPage',
		'ccmdashboardmock/CCMDashboardItems/test/integration/pages/ItemDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItemsList, ItemsObjectPage, ItemDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ccmdashboardmock/CCMDashboardItems') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheItemsList: ItemsList,
					onTheItemsObjectPage: ItemsObjectPage,
					onTheItemDetailsObjectPage: ItemDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);