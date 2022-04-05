using CatalogService as CatalogService from './cat-service';



@protocol : 'rest'
service CatalogServiceRest {

    entity Expenses as projection on CatalogService.AdditionalExpenses;

    entity ExpensesAnalytics as projection on CatalogService.AdditionalExpensesAnalytics;

}