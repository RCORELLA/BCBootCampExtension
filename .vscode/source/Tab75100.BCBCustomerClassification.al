table 75100 "BCB Customer Classification"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Code")

        {
            Clustered = true;
        }
    }



}