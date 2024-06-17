/**
 * 
 * @On(event = { "READ" }, entity = "ccm_dashboard_mockSrv.ItemAttributes")
 * @param {Object} req - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(req) {
  const { ItemAttributes, Items } = cds.entities;
  
  // Check if itemId is provided in the request
  if (!req.query.SELECT.where || !req.query.SELECT.where[0] || req.query.SELECT.where[0].ref[0] !== 'itemId') {
    req.reject(400, 'Please provide an itemId');
    return;
  }

  // Extract itemId from the request
  const itemId = req.query.SELECT.where[0].val;

  // Fetch the item from the Items entity
  const item = await SELECT.one.from(Items).where({ itemId: itemId });

  // Check if the item exists
  if (!item) {
    req.reject(404, `Item with itemId: ${itemId} does not exist`);
    return;
  }

  // Fetch the item attributes related to the item
  const itemAttributes = await SELECT.from(ItemAttributes).where({ itemId: itemId });

  // Return the item attributes
  return itemAttributes;
}