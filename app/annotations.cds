using { riskManagementSrv } from '../srv/service.cds';

annotate riskManagementSrv.Risks with @UI.HeaderInfo: { TypeName: 'Risk', TypeNamePlural: 'Risks', Title: { Value: name } };
annotate riskManagementSrv.Risks with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate riskManagementSrv.Risks with @UI.Identification: [{ Value: name }];
annotate riskManagementSrv.Risks with {
  mitigation @Common.ValueList: {
    CollectionPath: 'Mitigations',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: mitigation_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'counter'
      },
    ],
  }
};
annotate riskManagementSrv.Risks with @UI.DataPoint #impact: {
  Value: impact,
  Title: 'Impact',
};
annotate riskManagementSrv.Risks with @UI.DataPoint #criticality: {
  Value: criticality,
  Title: 'Criticality',
};
annotate riskManagementSrv.Risks with {
  name @title: 'Name';
  description @title: 'Description';
  impact @title: 'Impact';
  criticality @title: 'Criticality'
};

annotate riskManagementSrv.Risks with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: impact },
    { $Type: 'UI.DataField', Value: criticality },
    { $Type: 'UI.DataField', Label: 'Mitigation', Value: mitigation_ID }
];

annotate riskManagementSrv.Risks with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: impact },
    { $Type: 'UI.DataField', Value: criticality },
    { $Type: 'UI.DataField', Label: 'Mitigation', Value: mitigation_ID }
  ]
};

annotate riskManagementSrv.Risks with {
  mitigation @Common.Text: { $value: mitigation.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate riskManagementSrv.Risks with {
  mitigation @Common.Label: 'Mitigation'
};

annotate riskManagementSrv.Risks with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#impact' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#criticality' }
];

annotate riskManagementSrv.Risks with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate riskManagementSrv.Risks with @UI.SelectionFields: [
  mitigation_ID
];

annotate riskManagementSrv.Mitigations with @UI.HeaderInfo: { TypeName: 'Mitigation', TypeNamePlural: 'Mitigations', Title: { Value: name } };
annotate riskManagementSrv.Mitigations with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate riskManagementSrv.Mitigations with @UI.Identification: [{ Value: name }];
annotate riskManagementSrv.Mitigations with {
  risk @Common.ValueList: {
    CollectionPath: 'Risks',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: risk_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'impact'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'criticality'
      },
    ],
  }
};
annotate riskManagementSrv.Mitigations with @UI.DataPoint #counter: {
  Value: counter,
  Title: 'Counter',
};
annotate riskManagementSrv.Mitigations with {
  name @title: 'Name';
  description @title: 'Description';
  counter @title: 'Counter'
};

annotate riskManagementSrv.Mitigations with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: counter },
    { $Type: 'UI.DataField', Label: 'Risk', Value: risk_ID }
];

annotate riskManagementSrv.Mitigations with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: counter },
    { $Type: 'UI.DataField', Label: 'Risk', Value: risk_ID }
  ]
};

annotate riskManagementSrv.Mitigations with {
  risk @Common.Text: { $value: risk.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate riskManagementSrv.Mitigations with {
  risk @Common.Label: 'Risk'
};

annotate riskManagementSrv.Mitigations with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#counter' }
];

annotate riskManagementSrv.Mitigations with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate riskManagementSrv.Mitigations with @UI.SelectionFields: [
  risk_ID
];

