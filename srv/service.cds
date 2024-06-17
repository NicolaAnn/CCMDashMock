using { ccm_dashboard_mock as my } from '../db/schema.cds';

@path: '/service/ccm_dashboard_mock'
@requires: 'authenticated-user'
service ccm_dashboard_mockSrv {
  @odata.draft.enabled
  entity Header as projection on my.Header;
  @odata.draft.enabled
  entity Items as projection on my.Items;
  @odata.draft.enabled
  entity ItemDetails as projection on my.ItemDetails;
  @odata.draft.enabled
  entity ItemAttributes as projection on my.ItemAttributes;
  @odata.draft.enabled
  entity Notes as projection on my.Notes;
}