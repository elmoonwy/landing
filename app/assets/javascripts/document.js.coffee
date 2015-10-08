window.run_example = (id) ->
    $(".example_params").hide()
    $("#response-"+id).html("loading...")
    $("#example-"+id).show("slow")

    $.ajax
        url: "/verify"
        data: $("#response-"+id).data("params")
        success: (data) ->
            $("#response-"+id).html(data)
            console.log data
