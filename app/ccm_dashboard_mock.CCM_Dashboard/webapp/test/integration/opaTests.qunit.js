sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ccmdashboardmock/CCMDashboard/test/integration/FirstJourney',
		'ccmdashboardmock/CCMDashboard/test/integration/pages/HeaderList',
		'ccmdashboardmock/CCMDashboard/test/integration/pages/HeaderObjectPage',
		'ccmdashboardmock/CCMDashboard/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, HeaderList, HeaderObjectPage, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ccmdashboardmock/CCMDashboard') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheHeaderList: HeaderList,
					onTheHeaderObjectPage: HeaderObjectPage,
					onTheItemsObjectPage: ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);