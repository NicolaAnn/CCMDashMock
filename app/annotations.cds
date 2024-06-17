using { ccm_dashboard_mockSrv } from '../srv/service.cds';

annotate ccm_dashboard_mockSrv.Header with @UI.HeaderInfo: { TypeName: 'Header', TypeNamePlural: 'Headers', Title: { Value: displayId } };
annotate ccm_dashboard_mockSrv.Header with {
  ID @UI.Hidden @Common.Text: { $value: displayId, ![@UI.TextArrangement]: #TextOnly }
};
annotate ccm_dashboard_mockSrv.Header with @UI.Identification: [{ Value: displayId }];
annotate ccm_dashboard_mockSrv.Header with {
  displayId @title: 'Display ID';
  checkRunIx @title: 'Check Run Index'
};

annotate ccm_dashboard_mockSrv.Header with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: displayId },
    { $Type: 'UI.DataField', Value: checkRunIx }
];

annotate ccm_dashboard_mockSrv.Header with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: displayId },
    { $Type: 'UI.DataField', Value: checkRunIx }
  ]
};

annotate ccm_dashboard_mockSrv.Header with {
  toitm @Common.Label: 'Items'
};

annotate ccm_dashboard_mockSrv.Header with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate ccm_dashboard_mockSrv.Header with @UI.SelectionFields: [
  displayId
];

annotate ccm_dashboard_mockSrv.Items with @UI.HeaderInfo: { TypeName: 'Item', TypeNamePlural: 'Items' };
annotate ccm_dashboard_mockSrv.Items with {
  header @Common.ValueList: {
    CollectionPath: 'Header',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: header_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'displayId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'checkRunIx'
      },
    ],
  }
};
annotate ccm_dashboard_mockSrv.Items with {
  displayId @title: 'Display ID';
  itemId @title: 'Item ID'
};

annotate ccm_dashboard_mockSrv.Items with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: displayId },
    { $Type: 'UI.DataField', Value: itemId },
    { $Type: 'UI.DataField', Label: 'Header', Value: header_ID }
];

annotate ccm_dashboard_mockSrv.Items with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: displayId },
    { $Type: 'UI.DataField', Value: itemId },
    { $Type: 'UI.DataField', Label: 'Header', Value: header_ID }
  ]
};

annotate ccm_dashboard_mockSrv.Items with {
  header @Common.Text: { $value: header.displayId, ![@UI.TextArrangement]: #TextOnly }
};

annotate ccm_dashboard_mockSrv.Items with {
  todet @Common.Label: 'Item Details';
  toattr @Common.Label: 'Item Attributes';
  header @Common.Label: 'Header'
};

annotate ccm_dashboard_mockSrv.Items with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate ccm_dashboard_mockSrv.Items with @UI.SelectionFields: [
  header_ID
];

annotate ccm_dashboard_mockSrv.ItemDetails with @UI.HeaderInfo: { TypeName: 'Item Detail', TypeNamePlural: 'Item Details', Title: { Value: moduleId } };
annotate ccm_dashboard_mockSrv.ItemDetails with {
  ID @UI.Hidden @Common.Text: { $value: moduleId, ![@UI.TextArrangement]: #TextOnly }
};
annotate ccm_dashboard_mockSrv.ItemDetails with @UI.Identification: [{ Value: moduleId }];
annotate ccm_dashboard_mockSrv.ItemDetails with {
  items @Common.ValueList: {
    CollectionPath: 'Items',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: items_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'displayId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'itemId'
      },
    ],
  }
};
annotate ccm_dashboard_mockSrv.ItemDetails with {
  moduleId @title: 'Module ID';
  moduleIx @title: 'Module Index';
  messageIx @title: 'Message Index';
  langu @title: 'Language';
  checkClass @title: 'Check Class';
  messageId @title: 'Message ID';
  qualityStandard @title: 'Quality Standard';
  defaultPriority @title: 'Default Priority';
  title @title: 'Title';
  updatedOn @title: 'Updated On'
};

annotate ccm_dashboard_mockSrv.ItemDetails with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: moduleId },
    { $Type: 'UI.DataField', Value: moduleIx },
    { $Type: 'UI.DataField', Value: messageIx },
    { $Type: 'UI.DataField', Value: langu },
    { $Type: 'UI.DataField', Value: checkClass },
    { $Type: 'UI.DataField', Value: messageId },
    { $Type: 'UI.DataField', Value: qualityStandard },
    { $Type: 'UI.DataField', Value: defaultPriority },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: updatedOn },
    { $Type: 'UI.DataField', Label: 'Item', Value: items_ID }
];

annotate ccm_dashboard_mockSrv.ItemDetails with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: moduleId },
    { $Type: 'UI.DataField', Value: moduleIx },
    { $Type: 'UI.DataField', Value: messageIx },
    { $Type: 'UI.DataField', Value: langu },
    { $Type: 'UI.DataField', Value: checkClass },
    { $Type: 'UI.DataField', Value: messageId },
    { $Type: 'UI.DataField', Value: qualityStandard },
    { $Type: 'UI.DataField', Value: defaultPriority },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: updatedOn },
    { $Type: 'UI.DataField', Label: 'Item', Value: items_ID }
  ]
};

annotate ccm_dashboard_mockSrv.ItemDetails with {
  items @Common.Label: 'Item'
};

annotate ccm_dashboard_mockSrv.ItemDetails with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate ccm_dashboard_mockSrv.ItemDetails with @UI.SelectionFields: [
  items_ID
];

annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.HeaderInfo: { TypeName: 'Item Attribute', TypeNamePlural: 'Item Attributes', Title: { Value: itemId } };
annotate ccm_dashboard_mockSrv.ItemAttributes with {
  ID @UI.Hidden @Common.Text: { $value: itemId, ![@UI.TextArrangement]: #TextOnly }
};
annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.Identification: [{ Value: itemId }];
annotate ccm_dashboard_mockSrv.ItemAttributes with {
  items @Common.ValueList: {
    CollectionPath: 'Items',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: items_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'displayId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'itemId'
      },
    ],
  }
};
annotate ccm_dashboard_mockSrv.ItemAttributes with {
  itemId @title: 'Item ID';
  attrIx @title: 'Attribute Index';
  attributeName @title: 'Attribute Name';
  value @title: 'Value'
};

annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: itemId },
    { $Type: 'UI.DataField', Value: attrIx },
    { $Type: 'UI.DataField', Value: attributeName },
    { $Type: 'UI.DataField', Value: value },
    { $Type: 'UI.DataField', Label: 'Item', Value: items_ID }
];

annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: itemId },
    { $Type: 'UI.DataField', Value: attrIx },
    { $Type: 'UI.DataField', Value: attributeName },
    { $Type: 'UI.DataField', Value: value },
    { $Type: 'UI.DataField', Label: 'Item', Value: items_ID }
  ]
};

annotate ccm_dashboard_mockSrv.ItemAttributes with {
  items @Common.Label: 'Item'
};

annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate ccm_dashboard_mockSrv.ItemAttributes with @UI.SelectionFields: [
  items_ID
];

annotate ccm_dashboard_mockSrv.Notes with @UI.HeaderInfo: { TypeName: 'Note', TypeNamePlural: 'Notes', Title: { Value: noteNumber } };
annotate ccm_dashboard_mockSrv.Notes with {
  ID @UI.Hidden @Common.Text: { $value: noteNumber, ![@UI.TextArrangement]: #TextOnly }
};
annotate ccm_dashboard_mockSrv.Notes with @UI.Identification: [{ Value: noteNumber }];
annotate ccm_dashboard_mockSrv.Notes with {
  noteNumber @title: 'Note Number';
  noteText @title: 'Note Text'
};

annotate ccm_dashboard_mockSrv.Notes with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: noteNumber },
    { $Type: 'UI.DataField', Value: noteText }
];

annotate ccm_dashboard_mockSrv.Notes with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: noteNumber },
    { $Type: 'UI.DataField', Value: noteText }
  ]
};

annotate ccm_dashboard_mockSrv.Notes with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate ccm_dashboard_mockSrv.Notes with @UI.SelectionFields: [
  noteNumber
];

