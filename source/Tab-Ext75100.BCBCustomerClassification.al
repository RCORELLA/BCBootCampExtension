tableextension 75100 "BCB Customer Classification" extends Customer
{
    fields
    {
        field(50100; "BCB Customer Classification"; Code[10])
        {
            ToolTip = 'Classification code for BCB customers.';
            TableRelation = "BCB Customer Classification".Code;
        }
    }

}