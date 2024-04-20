sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managerisk/MyApplication/test/integration/FirstJourney',
		'managerisk/MyApplication/test/integration/pages/RisksList',
		'managerisk/MyApplication/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managerisk/MyApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);