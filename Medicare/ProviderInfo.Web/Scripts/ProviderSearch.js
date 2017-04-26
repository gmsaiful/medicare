
toastr.options.preventDuplicates = true;
toastr.options.positionClass = "toast-bottom-full-width";

function SearchClick() {
    var num = $('#txtNumber').val();
    var name = $('#txtName').val();
    var zip = $('#txtZip').val();

    var params = BuildWhereSearchParameters(num, name, zip);
    SearchProviderData(params);
    return false;
}
/*
function BuildSearchParameters(num, name, zip) {
    var params = '';
    if (num.length > 0)
        params = 'federal_provider_number=' + num;
    if (name.length > 0)
        params += '&provider_name=' + name;
    if (zip.length > 0)
        params += '&provider_zip_code=' + zip;

    if (params.startsWith('&'))
        params = params.substring(1);
    return params;
}*/

function BuildWhereSearchParameters(num, name, zip) {
    var params = '';
    if (num.length > 0)
        params = "federal_provider_number LIKE '%25" + num + "%25'";
    if (name.length > 0)
        params += "AND provider_name LIKE '%25" + name + "%25'";
    if (zip.length > 0)
        params += "AND provider_zip_code LIKE '%25" + zip + "%25'";

    if (params.startsWith('AND'))
        params = params.substring(3);
    return '$where=' + params;
}

function SearchProviderData(param) {
    $.ajax({
        url: "https://data.medicare.gov/resource/b27b-2uc7.json" + "?" + param,
        type: "GET",
        data: {
            "$limit": 5000,
            "$$app_token": "JgkCcCOlw68sFAFt1hYlanhZR"
        }
    }).done(function (result) {
        if (result.length == 0)
            toastr.info('Total records found: ' + result.length);
        else
            toastr.success('Total records found: ' + result.length);
    });
}

