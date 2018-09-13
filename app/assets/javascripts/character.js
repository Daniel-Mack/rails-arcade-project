class Character {
  constructor() {
    this.$addCharacterForm = $('.new_character')
    this.addCharacterFormListener()
  }

  addCharacterFormListener() {
    this.$addCharacterForm.on("submit", event => {
      event.preventDefault()
      let values = this.$addCharacterForm.serialize()
      let gameId = parseInt($(".gameEdit").attr("data-id"))
      $.post("/games/" + gameId + "/characters" + ".json", values, function(data) {
        let hero = data
        $(".gameCharacters").append(`<p><li><a href="/games/${gameId}/characters/13">${hero["name"]}</a></li></p>`)
      })
      $("#character_name").val("")
    })
  }
}

document.addEventListener("turbolinks:load", function() {
  new Character
})
