/**
 * 
 * @On(event = { "READ" }, entity = "ccm_dashboard_mockSrv.Items")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
    const { Items } = cds.entities;
    const items = await SELECT.from(Items);
    return items;
}