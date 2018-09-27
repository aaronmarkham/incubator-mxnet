function setVersion(){
    let doc = window.location.pathname.match(/\/(search\.html.*)$/);
    if (doc) {
            let params = document.location.search || '';
            if (document.getElementById('dropdown-menu-position-anchor-version')) {
                    versionNav = $('#dropdown-menu-position-anchor-version a.main-nav-link');
                    $(versionNav).each( function( index, el ) {
                            currLink = $( el ).attr('href');
                            version = currLink.match(/\/versions\/([0-9.master]+)\//);
                            if (version) {
                                    versionedDoc = '/versions/' + version[1] + '/' + doc[1] + (window.location.hash || params || '');
                                    $( el ).attr('href', versionedDoc);
                            }
                    });
            }
        }
}

function setSearch(){
    var searchForm = $("#search-input-wrap").children("form").first();
    searchForm.append('<div class="form-group searchBtn"><input type="submit" class="form-control" value="Go"></div>');
    searchForm.children("div").first().addClass("searchBox");
    $(".searchBox").addClass("searchBoxNorm");

    $('#searchIcon').click(function () {
        if($('#search-input-wrap').is(':hidden')) {
            $('#search-input-wrap').show();
            $('#searchIcon span').removeClass('glyphicon-search');
            $('#searchIcon span').addClass('glyphicon-remove-circle');
        }
        else {
            $('#search-input-wrap').hide();
            $('#searchIcon span').removeClass('glyphicon-remove-circle');
            $('#searchIcon span').addClass('glyphicon-search');
        }
    });
}

$(document).ready(function () {
    setSearch();
    setVersion();
});
