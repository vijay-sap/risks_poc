using riskManagementSrv as service from '../../srv/service';
using from '../annotations';
annotate service.Risks with {
    a_BusinessPartner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_BusinessPartner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : a_BusinessPartner_BusinessPartner,
                ValueListProperty : 'BusinessPartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FirstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LastName',
            },
        ],
    }
};

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : impact,
            Criticality : criticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mitigation',
            Value : mitigation_ID,
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mitigation',
                Value : mitigation_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : a_BusinessPartner_BusinessPartner,
                Label : 'Business Partner',
            },
        ],
    }
);
