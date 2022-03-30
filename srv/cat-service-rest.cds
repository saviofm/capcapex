using CatalogService as CatalogService from './cat-service';



@protocol : 'rest'
service CatalogServiceRest {

    entity Expenses as projection on CatalogService.Expenses;

    entity ExpensesAnalytics as projection on CatalogService.ExpensesAnalytics;

}