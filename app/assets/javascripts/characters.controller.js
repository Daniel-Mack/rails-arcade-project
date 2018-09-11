document.addEventListener("turbolinks:load", function () {
  $('.new_character').submit(gameCharacterCallback)
  function gameCharacterCallback(event) {
    event.preventDefault()
    let values = $(this).serialize()
    let gameId = parseInt($(".gameEdit").attr("data-id"))
    $.post("/games/" + gameId + "/characters" + ".json", values, function(data) {
      let hero = data
      $(".gameCharacters").append(`<p><li><a href="/games/${gameId}/characters/13">${hero["name"]}</a></li></p>`)
    })
    $("#character_name").val("")
  }
})
