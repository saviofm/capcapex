using {
  cuid,
  managed,
  sap,
  temporal,
  Currency,
  User
} from '@sap/cds/common';


namespace capcapex;

//----------------------- Expense  ---------------------//
//------------------------------------------------------//
//------------------------------------------------------//
//Entity
entity AdditionalExpenses : cuid {
    category: String @title: 'Category';
    amount: Decimal(9,2) @title: 'Amount';
    currency: Currency @title: 'Currency';
    postingDate: DateTime @title: 'Posting Date'
}

@Aggregation.ApplySupported.PropertyRestrictions: true
view AdditionalExpensesAnalytics as select from AdditionalExpenses {
  key ID,
  @Analytics.Dimension: true
  category,
  @Analytics.Measure: true
  @Aggregation.default: #SUM
  amount,
  @Analytics.Dimension: true
  currency
};
