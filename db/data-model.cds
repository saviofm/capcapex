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
//---------------------------category---------------------------//
//Entity
entity AdditionalExpenses : cuid {
    category: String;
    amount: Decimal(9,2);
    currency: Currency;
    postingDate: DateTime;
}


@cds.odata.valuelist
//Annotation
annotate AdditionalExpenses with @(
  title              : '{i18n>AdditionalExpenses}',
  description        : '{i18n>AdditionalExpensesDesc}',
  //UI.TextArrangement : #TextOnly,
  //Common.SemanticKey : [docNumber],
  //UI.Identification  : [{
  //  $Type : 'UI.DataField',
  //  Value : docnumber
  //}]
) {
  category            @(
    title       : '{i18n>category}',
    description : '{i18n>category}',
    Common      : {
        FieldControl             : #Mandatory,
    //  Text : {
    //    $value                 : categoryDescription,
    //    ![@UI.TextArrangement] : #TextLast
    //  }
    }
  );
  amount            @(
    title       : '{i18n>amount}',
    description : '{i18n>amount}'
  );
  currency            @(
    title       : '{i18n>currency}',
    description : '{i18n>currency}'
  );
  postingDate            @(
    title       : '{i18n>postingDate}',
    description : '{i18n>postingDate}'
  );
};


//-------------- Expense ANALYTICS VIEW  ---------------//
//------------------------------------------------------//
//------------------------------------------------------//
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


annotate AdditionalExpensesAnalytics with @(
 title              : '{i18n>AdditionalExpensesAnalytics}',
  description       : '{i18n>AdditionalExpensesAnalyticsDesc}'
);