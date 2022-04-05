using capcapex as capcapex from '../db/data-model';

service CatalogService {// @( requires:'authenticated-user') {
   //Serviços para Analiticos  
   entity AdditionalExpenses as projection on capcapex.AdditionalExpenses;
   
   @readonly
   view AdditionalExpensesAnalytics as select from capcapex.AdditionalExpensesAnalytics;

}