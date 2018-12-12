// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50130 "CustomerListExt" extends "Customer List"
{
    layout
    {
        addfirst(FactBoxes)
        {
            part(Ratings; "Customer Ratings Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field ("No.");
            }
        }
    }
}