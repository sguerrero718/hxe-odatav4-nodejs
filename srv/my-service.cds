using my.bookshop.BookSaleVw as BS from '../db/data-model';

service CatalogService {
  
  entity BookInfo {
    key ID : Integer;
    copiesSold: Integer;
  };
  
  
  entity BSVW @(
	title: 'abcd',
	Capabilities: {
		InsertRestrictions: { Insertable: false },
		UpdateRestrictions: { Updatable: false },
		DeleteRestrictions: { Deletable: false }
	}
  ) as projection on BS;
  
}