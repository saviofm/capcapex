using CatalogService from './cat-service';

//----------------------- Expenses  ---------------------//
//------------------------------------------------------//
//------------------------------------------------------//
//Ovp Analytics Page
annotate CatalogService.AdditionalExpensesAnalytics with @(
    UI: {
        Chart: {
            $Type: 'UI.ChartDefinitionType',
            ChartType: #Donut,
            Measures: ['amount'],
            MeasureAttributes: [{
                $Type: 'UI.ChartMeasureAttributeType',
                Measure: 'amount',
                Role: #Axis1
            }],             
            Dimensions: ['category'],
            DimensionAttributes: [{
                $Type: 'UI.ChartDimensionAttributeType',
                Dimension: 'category',
                Role: #Category
            }]       
        }
    }
);

annotate CatalogService.AdditionalExpenses with @(
    UI: {
        SelectionFields: [postingDate, category],
        LineItem: [
            { Value: postingDate },
            { Value: category },
            { Value: amount },
            { Value: currency_code }
        ], 
        Chart: {
            $Type: 'UI.ChartDefinitionType',
            ChartType: #Donut,
            Measures: ['amount'],
            MeasureAttributes: [{
                $Type: 'UI.ChartMeasureAttributeType',
                Measure: 'amount',
                Role: #Axis1
            }],             
            Dimensions: ['category'],
            DimensionAttributes: [{
                $Type: 'UI.ChartDimensionAttributeType',
                Dimension: 'category',
                Role: #Category
            }]       
        }
    }
);


