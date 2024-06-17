/**
 * 
 * @On(event = { "READ" }, entity = "ccm_dashboard_mockSrv.ItemDetails")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
  const { ItemDetails } = cds.entities;
  const itemId = request.query.SELECT.where[0].val;

  if (itemId === undefined) {
    request.reject(400, 'Bad Request: itemId is missing');
    return;
  }

  const itemDetails = await SELECT.from(ItemDetails).where({ itemId: itemId });

  if (itemDetails.length === 0) {
    request.reject(404, 'Not Found: No item details found for the provided itemId');
    return;
  }

  return itemDetails;
}