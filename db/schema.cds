using { Currency, managed, sap} from '@sap/cds/common';

namespace sap.capire.iasmanager;

entity Tenants : managed {
    key ID               : Integer                      @title  : 'ID';
        iasUrl           : String(100)                  @title  : 'IAS Tenant Admin URL';
        licenseType      : String(100)                  @title  : 'LicenseType';
        tenantId         : String(100)                  @title  : 'IAS Tenant ID';
        reservedFor      : String(100)                  @title  : 'Reserved For';
        reservedBy       : String(100)                  @title  : 'Reserved By';
        isDefault        : String(100)                  @title  : 'IsDefault';
        isAdditional     : String(100)                  @title  : 'IsAdditional';
        requestUrl       : String(100)                  @title  : 'RequestUrl';
        isActive         : String(100)                  @title  : 'IsActive';
        customerId       : String(100)                  @title  : 'CustomerId';
        landscapeType    : String(100)                  @title  : 'LandscapeType';
        iasAdmin         : String(100)                  @title  : 'IasAdmin';
        tenantAdmin      : String(100)                  @title  : 'TenantAdmin';
        subaccountId     : String(100)                  @title  : 'SubaccountId';

       
}