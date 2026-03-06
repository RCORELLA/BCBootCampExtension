codeunit 75100 "BCB Cust. management"
{
    procedure InitClassificationForAllCust()
    var
        cust: Record Customer;

    begin
        if not cust.FindSet() then
            exit;

        repeat
            cust."BCB Customer Classification" := 'BRONZE';
            cust.Modify();
        until cust.Next() = 0;
    end;

    // clean up the classification field for all customers
    procedure ClearClassificationForAllCust()
    var
        cust: Record Customer;

    begin
        if not cust.FindSet() then
            exit;

        repeat
            cust."BCB Customer Classification" := '';
            cust.Modify();
        until cust.Next() = 0;
    end;
}