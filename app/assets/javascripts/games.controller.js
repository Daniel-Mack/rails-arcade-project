document.addEventListener("turbolinks:load", function () {
  $('.edit_game').submit(editGameCallback)
    function editGameCallback(event) {
      event.preventDefault()
      let values = $(this).serialize()
      let gameId = parseInt($(".gameEdit").attr("data-id"))
      let editGame = $.post("/games/" + gameId + ".json", values)
      $("#game_name").val("")
      editGame.done(function(data) {
        let game = data
        $(".gameName").text(game["name"])
        $(".gameDifficultyLevel").text(game["difficulty_level"])
        $(".gameFunRating").text(game["fun_rating"])
      })
    }

  $('.js-next').click(nextGameCallback)
    function nextGameCallback(event) {

    let nextId = parseInt($(".js-next").attr("data-id")) + 1;
    // debugger
    $.get("/games/" + nextId + ".json", function(game) {
      // debugger
      // Update form and inputs
      $("form.edit_game").attr("action", `/games/${game["id"]}`)
      $("input#game_name").val(game["name"])
      $("#game_difficulty_level option").prop('selected', false)
      $(`#game_difficulty_level option[value="${game['difficulty_level']}"]`).prop('selected', true);
      $("#game_fun_rating option").prop('selected', false)
      $(`#game_fun_rating option[value="${game['fun_rating']}"]`).prop('selected', true);
      $("input#character_game_id").val(game.id)

      // Update Readonly Display fields
      $(".gameName").text(game["name"])
      $(".gameDifficultyLevel").text(game["difficulty_level"])
      $(".gameFunRating").text(game["fun_rating"])
      $(".gameCharacters").text("")
      game["characters"].forEach(function(character){
        $(".gameCharacters").append(`<li><a href='/games/${game.id}/characters/${character.id}'>${character.name}</a></li><br>`)
        $('.initialCharacters').hide()
      })
      $(".js-next").attr("data-id", game["id"])
    })
  }
})
