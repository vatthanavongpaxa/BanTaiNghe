var common = {
    init: function () {
        common.registerEvent();
    },
    registerEvent:function()
    {
        $("#project").autocomplete({
            minLength: 0,
            source: function (request, response) {
                $.ajax({
                    url: "/TimKiem/TimKiem",
                    dataType: "jsonp",
                    data: {
                        term: request.term
                    },
                    success: function (response) {
                        response(response.data);
                    }
                });
            },
            focus: function (event, ui) {
                $("#txtKeyword").val(ui.item.label);
                return false;
            },
            select: function (event, ui) {
                $("#txtKeyword").val(ui.item.label);
                //$("#txtKeyword-id").val(ui.item.value);
                //$("#txtKeyword-description").html(ui.item.desc);
                //$("#txtKeyword-icon").attr("src", "images/" + ui.item.icon);

                return false;
            }
        })
    .autocomplete("instance")._renderItem = function (ul, item) {
        return $("<li>")
          .append("<div>" + item.label + "</div>")
          .appendTo(ul);
    };
    }

}
common.init();