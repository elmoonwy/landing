return unless $(".home.demo").length > 0

$.fn.type_text = (content) ->
    contentArray = content.split("")
    current = 0
    elem = this
    duration = Math.floor(Math.random()*100 + 50)

    setInterval(()->
        if current < contentArray.length
            elem.val(elem.val() + contentArray[current++])
    , duration)

window.empty_form = () ->
    $("#fname").val("")
    $("#lname").val("")
    $("#dob").val("")
    $("#zipcode").val("")

window.fill_in_form = (fname, lname, dob, zipcode) ->
    empty_form()
    $("#fname").type_text(fname)
    $("#lname").type_text(lname)
    $("#dob").type_text(dob)
    $("#zipcode").type_text(zipcode)

$("#form-block").waypoint({
    handler: (direction)->
        if direction == "down" and $("#fname").val() == ""
            fill_in_form("Antoinette", "Amira", "1963-02-09", "21073-4433")
})
