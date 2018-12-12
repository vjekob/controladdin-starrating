controladdin "Customer Ratings"
{
    Scripts =
        'Common/jquery-3.3.1.min.js',
        'Common/html.js',
        'Ratings/Scripts/ratings.js';
    StartupScript = 'Ratings/Scripts/loadHtml.js';
    StyleSheets = 'Ratings/Styles/ratings.css';
    Images = 
        'Ratings/Images/star.png',
        'Ratings/Images/star-empty.png',
        'Ratings/Html/ratings.html';

    RequestedHeight = 90;
    RequestedWidth = 320;
    HorizontalStretch = true;

    event ControlReady();
    event SaveRatings(Tag: Text; Rating: Integer);
    procedure ShowRatings(Ratings: JsonObject);
}