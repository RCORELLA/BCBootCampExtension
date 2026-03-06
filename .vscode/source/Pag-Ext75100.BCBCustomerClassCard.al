pageextension 75100 "BCB Customer Class. Card" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("BCB Customer Classification"; Rec."BCB Customer Classification")
            {
                ApplicationArea = All;
            }
        }
    }


}