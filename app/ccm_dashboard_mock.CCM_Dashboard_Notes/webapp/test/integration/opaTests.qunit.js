sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ccmdashboardmock/CCMDashboardNotes/test/integration/FirstJourney',
		'ccmdashboardmock/CCMDashboardNotes/test/integration/pages/NotesList',
		'ccmdashboardmock/CCMDashboardNotes/test/integration/pages/NotesObjectPage'
    ],
    function(JourneyRunner, opaJourney, NotesList, NotesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ccmdashboardmock/CCMDashboardNotes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNotesList: NotesList,
					onTheNotesObjectPage: NotesObjectPage
                }
            },
            opaJourney.run
        );
    }
);