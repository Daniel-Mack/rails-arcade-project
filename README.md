# README



**Welcome to the Arcade Zone application!**


In this app you can play games, build your own game and add characters!

After you've built a new game, you must create a character to start the game.

You can view the gemfile to see which gems are required to run the app.

After the gems are added, run bundle install.


<!-- <u><h1 class="gameName"><%= @game.name %></h1><br></u>
<b>Difficulty:</b> <p class="gameDifficultyLevel"><%= @game.difficulty_level %></p>
<b>Fun Rating:</b> <p class="gameFunRating"><%= @game.fun_rating %></p> -->

<!-- Edits the game -->
<!-- <br><button class="gameEdit" data-id="<%= @game.id %>">Edit Game</button>

<%= form_for (@game) do |f| %>
  <div class="editForm">
    <%= f.label :name %>:
    <%= f.text_field :name %>
    <p><b>Select Difficulty: <%= f.select :difficulty_level, [['Hard'], ['Medium'], ['Easy']]  %></b></p>
    <p><b>Select Fun Rating: <%= f.select :fun_rating, [['High'], ['Average'], ['Low']]  %></b></p>
    <b><%= f.submit %></b>
  </div>
<% end %>

<script>
  $('.gameEdit').on("click", event => {
    $(".editForm").toggle();
  })

  $('.gameEdit').click(function() {
    $(this).hide()
  })
</script>

<script type="text/javascript" charset="utf-8">
$(function () {
  $('.edit_game').submit(function(event) {
    event.preventDefault()
    let values = $(this).serialize()
    let gameId = parseInt($(".gameEdit").attr("data-id"))
    let editGame = $.post('/games/' + gameId, values)
    editGame.done(function(data) {
      let game = data
      $("#gameName").text(game["name"])
      $("#gameDifficultyLevel").text(game["difficulty_level"])
      $("#gameFunRating").text(game["fun_rating"])
    });
  });
});
</script> -->
<!-- Edits the game -->


<!-- Selects Oppenent -->
<!-- <h3><i>Select your opponent:</h3></i>
<%= form_for (@game) do |f| %>
  <%= f.collection_select :player_ids, Player.not_me(current_player), :id, :name, :include_blank => "Computer" %>
<% end %> -->
<!-- Selects Opponent -->


<!-- Selects Character -->
<!-- <br><i><h3>Select a character to start the game:</h3></i>
<div class="initialCharacters">
  <% @game.characters.each do |character| %>
    <p></h4><li><%= link_to character&.name, game_character_path(character, game_id: @game) %></h4></p></li>
  <% end %>
  <ol>
  </ol>
</div> -->
<!-- Selects Character -->


<!-- <div id="gameResult">
  <h4 id="gameName"></h4>
  <h4 id="gameDifficultyLevel"></h4>
  <h4 id="gameFunRating"></h4>
</div>

<div class="gameCharacters">
</div>

<div id="characterName">
</div> -->


<!-- Adds New Character -->
<!-- <br><i><h3>Or Create a Character</h3></i>

<%= form_for(@character) do |f| %>
  <div class="charForm">
    <%= f.hidden_field :player_id, value: current_player.id %>
    <%= f.label :name %>
    <%= f.text_field :name %>
    <%=f.hidden_field :game_id, :value => @game.id %>
    <br><b><%= f.submit %></b>
  </div>
<% end %>

<script type="text/javascript" charset="utf-8">
$(function () {
  $('.new_character').submit(function(event) {
    event.preventDefault()
    let values = $(this).serialize()
    let gameId = parseInt($(".gameEdit").attr("data-id"))
    let addChar = $.post('/games/' + gameId + '/characters' + '.json', values)
    $("#character_name").val("")
    addChar.done(function(data) {
      let hero = data
      $(".gameCharacters").append(`<p><li><a href="/games/${gameId}/characters/13">${hero["name"]}</a></li></p>`)
    })
  })
})
</script>

 <script>
$('body').on('submit','.new_character', function() {
    if (true) {
      return false;
    } else {
      return true;
    }
})
</script> -->


<!-- Adds New Character -->


<!-- Shifts Through Games -->
<!-- <script type="text/javascript" charset="utf-8">
$(function () {
  $(".js-next").on("click", function() {
    let nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/games/" + nextId + ".json", function(game) {

      // Update Edit Button
      $(".gameEdit").attr("data-id", game["id"]);

      // Update form and inputs
      $("form.edit_game").attr("action", `/games/${game["id"]}`);
      $("input#game_name").val(game["name"]);
      $("#game_difficulty_level option").prop('selected', false);
      $(`#game_difficulty_level option[value="${game['difficulty_level']}"]`).prop('selected', true);
      $("#game_fun_rating option").prop('selected', false);
      $(`#game_fun_rating option[value="${game['fun_rating']}"]`).prop('selected', true);
      $("input#character_game_id").val(game.id)

      // Update Readonly Display fields
      $(".gameName").text(game["name"]);
      $(".gameDifficultyLevel").text(game["difficulty_level"]);
      $(".gameFunRating").text(game["fun_rating"]);
      $(".gameCharacters").text("")
      game["characters"].forEach(function(character){
        $(".gameCharacters").append(`<li><a href='/games/${game.id}/characters/${character.id}'>${character.name}</a></li><br>`)
        $('.initialCharacters').hide();
      })
      $(".js-next").attr("data-id", game["id"]);
    });
    // debugger
  });
});
</script>

<br><br><br><br><button class="js-next" data-id="<%= @game.id %>">Next Game >></button> -->
<!-- Shifts Through Games -->
