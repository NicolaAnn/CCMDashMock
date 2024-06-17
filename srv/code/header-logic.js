/**
 * 
 * @On(event = { "READ" }, entity = "ccm_dashboard_mockSrv.Header")
 * @param {Object} req - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(req) {
    const { Header } = cds.entities;
    
    // Read data from Header
    const headers = await SELECT.from(Header);
    
    // Check if headers is not undefined
    if (headers !== undefined) {
        return headers;
    } else {
        return "No data found in Header";
    }
}