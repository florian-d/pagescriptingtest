// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50000 CustomerListExt extends "Sales Order"
{
    layout
    {
        modify("Sell-to Customer Name")
        {
            trigger OnAfterValidate()
            begin
                Rec."Sell-to Customer Name" := 'Hello World';
                Rec.Modify(false)
            end;
        }
    }
}

