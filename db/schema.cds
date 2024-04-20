namespace riskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

entity Risks
{
    key ID : UUID;
    name : String(100)
        @mandatory;
    description : String(500);
    impact : Integer;
    criticality : Integer;
    mitigation : Association to one Mitigations;
    a_BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    name : String(100)
        @mandatory;
    description : String(500);
    counter : Integer;
    risk : Association to one Risks;
}
