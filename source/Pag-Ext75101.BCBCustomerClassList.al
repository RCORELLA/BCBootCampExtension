pageextension 75101 "BCB Customer Class List" extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field("BCB Customer Classification"; Rec."BCB Customer Classification")
            {
                ApplicationArea = All;
            }
        }
    }


}