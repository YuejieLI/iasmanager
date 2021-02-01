using {sap.capire.iasmanager as my} from '../db/schema';

service CatalogService {
    entity Tenants as projection on my.Tenants
}


