page 75100 "BCB Customer Class. List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "BCB Customer Classification";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Code"; rec."Code")
                {

                }
                field("Description"; rec."Description")
                {
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Clean)
            {
                Caption = 'Clean up classification';
                Image = ClearLog;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    custManagement: Codeunit "BCB Cust. management";
                begin

                    if Confirm('Are you sure you want to clean up the classification for all customers?', false) then begin
                        custManagement.ClearClassificationForAllCust();
                        Message('Classification cleaned up for all customers.');
                    end;
                end;
            }
            action(Initialize)
            {
                Caption = 'Initialize classification';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    custManagement: Codeunit "BCB Cust. management";
                begin

                    if Confirm('Are you sure you want to initialize the classification for all customers? This will set the classification to BRONZE for all customers.', false) then begin
                        custManagement.InitClassificationForAllCust();
                        Message('Classification initialized for all customers.');
                    end;
                end;
            }
        }
    }
}