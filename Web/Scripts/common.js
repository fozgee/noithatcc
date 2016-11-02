function parseJsonDate(jsonDate) {
    if ( jsonDate == null) return "";
    var date = new Date(parseInt(jsonDate.substr(6)));
    return date.toDateString();
}