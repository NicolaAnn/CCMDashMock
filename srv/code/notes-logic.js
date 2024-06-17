/**
 * 
 * @On(event = { "READ" }, entity = "ccm_dashboard_mockSrv.Notes")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
    const { Notes } = cds.entities;
    const notesData = await SELECT.from(Notes);
    return notesData;
}