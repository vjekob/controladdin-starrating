page 50131 "Customer Ratings Factbox"
{
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            usercontrol(Ratings; "Customer Ratings")
            {
                ApplicationArea = All;

                trigger ControlReady();
                begin
                    SendRating();
                end;

                trigger SaveRatings(Tag: Text; Rating: Integer);
                begin
                    case Tag of
                        'com':
                            begin
                                Rec."Communication Rating" := Rating;
                                Rec.Modify(false);
                            end;
                        'pmt':
                            begin
                                Rec."Payments Rating" := Rating;
                                Rec.Modify(false);
                            end;
                    end;
                end;
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        SendRating();
    end;

    local procedure SendRating();
    var
        Json: JsonObject;
    begin
        Json.Add('communication', Rec."Communication Rating");
        Json.Add('payment', Rec."Payments Rating");
        CurrPage.Ratings.ShowRatings(Json);
    end;
}