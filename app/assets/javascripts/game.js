class Game {
  constructor() {
    this.$editGameForm = $('.edit_game')
    this.editGameFormListener()
    this.$nextGameButton = $('.js-next')
    this.nextGameButtonListener()
  }

  editGameFormListener() {
    this.$editGameForm.on("submit", event => {
      event.preventDefault()
      let values = this.$editGameForm.serialize()
      let gameId = $(".gameEdit").attr("data-id")
      let editGame = $.post("/games/" + gameId + ".json", values)
      editGame.done(function(game) {
        $(".gameName").text(game["name"])
        $(".gameDifficultyLevel").text(game["difficulty_level"])
        $(".gameFunRating").text(game["fun_rating"])
      })
      if (true) {
        return false;
      } else {
        return true;
      }
    })
  }

  nextGameButtonListener() {
    this.$nextGameButton.on("click", event => {
      event.preventDefault()
      let nextId = parseInt($(".js-next").attr("data-id")) + 1;
      $.get("/games/" + nextId + ".json", function(game) {
        // Update form and inputs
        $("form.edit_game").attr("action", `/games/${game["id"]}`)
        // debugger
        $("input#game_name").val(game["name"])
        $("#game_difficulty_level option").prop('selected', false)
        $(`#game_difficulty_level option[value="${game['difficulty_level']}"]`).prop('selected', true);
        $("#game_fun_rating option").prop('selected', false)
        // Need to update dataid of edit form .attr
        $(".gameEdit").attr("data-id", game["id"])
        $(`#game_fun_rating option[value="${game['fun_rating']}"]`).prop('selected', true);
        $("input#character_game_id").val(game.id)
        // Update Readonly Display fields
        $(".gameName").text(game["name"])
        $(".gameDifficultyLevel").text(game["difficulty_level"])
        $(".gameFunRating").text(game["fun_rating"])
        $(".gameCharacters").text("")
        game["characters"].forEach(function(character) {
          $(".gameCharacters").append(`<li><a href='/games/${game.id}/characters/${character.id}'>${character.name}</a></li><br>`)
          $('.initialCharacters').hide()
        })
        $(".js-next").attr("data-id", game["id"])
      })
    })

    selectCharacterListener() {

    }
  }
}

document.addEventListener("turbolinks:load", function() {
  new Game
})
