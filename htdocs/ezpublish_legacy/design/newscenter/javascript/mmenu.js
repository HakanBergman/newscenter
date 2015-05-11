$(document).ready(function() {
    $("#mmenu").mmenu({
	slidingSubmenus: false
    }, {
	transitionDuration: 0,
    });

    $("#user-mmenu").mmenu({
	slidingSubmenus: false,
       offCanvas: {
		position  : "right",
       	zposition : "front"
	}
    }, {
	transitionDuration: 0,
    });

    $("#basket").mmenu({
        slidingSubmenus: false,
        offCanvas: {
            position: "right",
            zposition: "front"
        }
    }, {
        transitionDuration: 0,
    });

    var API = $("#basket").data("mmenu");
    $("#close").click(function () {
        API.close();
    });

});


