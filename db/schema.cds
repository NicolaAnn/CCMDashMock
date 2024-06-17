namespace ccm_dashboard_mock;
using { cuid } from '@sap/cds/common';

entity Header : cuid {
  displayId: UUID @assert.unique @mandatory;
  checkRunIx: String;
  toitm: Association to many Items on toitm.header = $self;
}

entity Items : cuid {
  displayId: UUID;
  itemId: UUID;
  todet: Association to many ItemDetails on todet.items = $self;
  toattr: Association to many ItemAttributes on toattr.items = $self;
  header: Association to Header;
}

entity ItemDetails : cuid {
  itemId: UUID;
  displayId: UUID;
  moduleId: UUID @assert.unique @mandatory;
  moduleIx: String @assert.unique @mandatory;
  messageIx: String @assert.unique @mandatory;
  langu: String @assert.unique @mandatory;
  checkClass: String;
  messageId: String;
  qualityStandard: String;
  defaultPriority: String;
  title: String;
  updatedOn: Date;
  items: Association to Items;
}

entity ItemAttributes : cuid {
  itemId: UUID @assert.unique @mandatory;
  attrIx: String;
  attributeName: String;
  value: String;
  items: Association to Items;
}

entity Notes : cuid {
  noteNumber: String @assert.unique @mandatory;
  noteText: String;
}

