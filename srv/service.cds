using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { riskManagement } from '../db/schema.cds';

@path : '/service/riskManagement'
service riskManagementSrv
{
    @odata.draft.enabled
    entity Risks as
        projection on riskManagement.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on riskManagement.Mitigations;

    entity A_BusinessPartner as projection on BusinessPartnerA2X.A_BusinessPartner
    {
        *
    }
    excluding
    {
        Customer,
        Supplier,
        AcademicTitle,
        AuthorizationGroup,
        BusinessPartnerCategory,
        BusinessPartnerFullName,
        BusinessPartnerGrouping,
        BusinessPartnerName,
        BusinessPartnerUUID,
        CorrespondenceLanguage,
        CreatedByUser,
        CreationDate,
        CreationTime,
        FormOfAddress,
        Industry,
        InternationalLocationNumber1,
        InternationalLocationNumber2,
        IsFemale,
        IsMale,
        IsNaturalPerson,
        IsSexUnknown,
        GenderCodeName,
        Language,
        LastChangeDate,
        LastChangeTime,
        LastChangedByUser,
        LegalForm,
        OrganizationBPName1,
        OrganizationBPName2,
        OrganizationBPName3,
        OrganizationBPName4,
        OrganizationFoundationDate,
        OrganizationLiquidationDate,
        SearchTerm1,
        SearchTerm2,
        AdditionalLastName,
        BirthDate,
        BusinessPartnerBirthDateStatus,
        BusinessPartnerBirthplaceName,
        BusinessPartnerDeathDate,
        BusinessPartnerIsBlocked,
        BusinessPartnerType,
        ETag,
        GroupBusinessPartnerName1,
        GroupBusinessPartnerName2,
        IndependentAddressID,
        InternationalLocationNumber3,
        MiddleName,
        NameCountry,
        NameFormat,
        PersonFullName,
        PersonNumber,
        IsMarkedForArchiving,
        BusinessPartnerIDByExtSystem,
        BusinessPartnerPrintFormat,
        BusinessPartnerOccupation,
        BusPartMaritalStatus,
        BusPartNationality,
        BusinessPartnerBirthName,
        BusinessPartnerSupplementName,
        NaturalPersonEmployerName,
        LastNamePrefix,
        LastNameSecondPrefix,
        Initials,
        BPDataControllerIsNotRequired,
        TradingPartner,
        to_AddressIndependentEmail,
        to_AddressIndependentFax,
        to_AddressIndependentMobile,
        to_AddressIndependentPhone,
        to_AddressIndependentWebsite,
        to_BPCreditWorthiness,
        to_BPDataController,
        to_BPEmployment,
        to_BPFinServicesReporting,
        to_BPFiscalYearInformation,
        to_BPRelationship,
        to_BuPaIdentification,
        to_BuPaIndustry,
        to_BusinessPartner,
        to_BusinessPartnerAddress,
        to_BusinessPartnerAlias,
        to_BusinessPartnerBank,
        to_BusinessPartnerContact,
        to_BusinessPartnerIsBank,
        to_BusinessPartnerRating,
        to_BusinessPartnerRole,
        to_BusinessPartnerTax,
        to_BusPartAddrDepdntTaxNmbr,
        to_Customer,
        to_PaymentCard,
        to_Supplier
    };
}

annotate riskManagementSrv with @requires :
[
    'authenticated-user'
];
