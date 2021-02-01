using from './cat-service';

annotate CatalogService.Tenants with @(
    UI: {
        HeaderInfo: {
            TypeName: 'Tenant',
            TypeNamePlural: 'IAS Tenants List',  // it displays the name in the app page
            Title: { Value: ID }, // it displys at the object page as titile
            Description: { Value: tenantId } // it displys at the object page under titile
        },
        SelectionFields: [ ID, tenantId, reservedFor, reservedBy ],
        LineItem: [
            { Value: ID },
            { Value: tenantId},
            // { Value: iasUrl },
            { Value: reservedFor },
            { Value: reservedBy}               
        ],
        Facets: [
            {
                $Type: 'UI.CollectionFacet',
                Label: 'Tenant Info',
                Facets: [
                    {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Main Facet'}
                ]
            }
        ],        
        FieldGroup#Main: {
            Data: [
                { Value: ID },  //显示在object page中
                { Value: tenantId},
                { Value: iasUrl },
                { Value: reservedFor },
                { Value: reservedBy},
                { Value: subaccountId},
                { Value: isActive},
                { Value: iasAdmin},             
            ]
        }
    }
);