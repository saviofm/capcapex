using capcapex as capcapex from '../db/data-model';

service CatalogService {// @( requires:'authenticated-user') {
   //Serviços para Analiticos  
   entity Expenses as projection on capcapex.AdditionalExpenses;
   
   @readonly
   view ExpensesAnalytics as select from capcapex.AdditionalExpensesAnalytics;

}