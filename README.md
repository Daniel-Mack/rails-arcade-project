# README



**Welcome to the Arcade Zone application!**


In this app you can play games, build your own game and add characters!

After you've built a new game, you must create a character to start the game.

You can view the gemfile to see which gems are required to run the app.

After the gems are added, run bundle install.
<!--

<u><h1 class="gameName"><%= @game.name %></h1><br></u>
<b>Difficulty:</b> <p class="gameDifficultyLevel"><%= @game.difficulty_level %></p>
<b>Fun Rating:</b> <p class="gameFunRating"><%= @game.fun_rating %></p>

<!-- Edits the game -->
<!-- <br><button class="gameEdit" data-id="<%= @game.id %>">Edit Game</button>

<%= form_for (@game) do |f| %>
  <div class="editForm">
    <%= f.label :name %>:
    <%= f.text_field :name %>
  </div>
  <div class="editForm">
    <p><b>Select Difficulty: <%= f.select :difficulty_level, [['Hard'], ['Medium'], ['Easy']]  %></b></p>
  </div>
  <div class="editForm">
    <p><b>Select Fun Rating: <%= f.select :fun_rating, [['High'], ['Average'], ['Low']]  %></b></p>
  </div>
  <div class="editActions">
    <b><%= f.submit %></b>
  </div>
<% end %> -->

<!-- <script>
  $('.gameEdit').on("click", event => {
    $(".editForm").toggle();
  })
</script>

<script>
$('.gameEdit').click(function() {
    $(this).hide()
})
</script> -->

<!-- <script type="text/javascript" charset="utf-8">
$(function () {
  $('.edit_game').submit(function(event) {
    event.preventDefault()
    let values = $(this).serialize()
    let editGame = $.post('/games', values)
    editGame.done(function(data) {
      let game = data
      $("#gameName").text(game["name"])
      $("#gameDifficultyLevel").text(game["difficulty_level"])
      $("#gameFunRating").text(game["fun_rating"])
      debugger
    });
    debugger
  });
});
</script> -->
<!-- Edits the game -->


<!-- Selects Oppenent -->
<!-- <h3>Select your opponent:</h3>
<%= form_for (@game) do |f| %>
  <%= f.collection_select :player_ids, Player.not_me(current_player), :id, :name, :include_blank => "Computer" %>
<% end %> -->
<!-- Selects Opponent -->


<!-- Selects Character -->
<!-- <br><h3>Select a character to start the game:</h3>
<div class="initialCharacters">
  <% @game.characters.each do |character| %>
    <p></h4><li><%= link_to character&.name, game_character_path(character, game_id: @game) %></h4></p></li>
  <% end %><br>
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
<!-- <%= form_for(@character, url: game_characters_path(@game)) do |f| %>
  <div>
    <%= f.label :name %><br>
    <%= f.text_field :name %>
  </div>
  <div>
    <br><%= f.submit %>
  </div>
<% end %> -->

<!-- <button class="newHero" data-id="<%= @game.id %>">Make a Character</button><br> -->

<!-- <script>
  $('.newHero').on("click", event => {
    // debugger
    $(".charForm").toggle();
  })
</script>

<script>
$('.newHero').click(function() {
  // debugger
    $(this).hide()
})
</script> -->

<!-- <script type="text/javascript" charset="utf-8">
$(function () {
  $('#new_character').on("submit", event => {
    event.preventDefault()
    let values = $(this).serialize()
    let gameId = parseInt($('.gameEdit').attr("data-id"))
    let newChar = $.post('/games/' + gameId + '/characters' + '.json', values)
    newChar.done(function(data) {
      let character = data
      $("#characterName").text(character["name"])
      debugger
    })
    debugger
  })
})
</script> -->
<!-- Adds New Character -->


<!-- Shifts Through Games -->
<!-- <script type="text/javascript" charset="utf-8">
$(function () {
  $(".js-next").on("click", function() {
    let nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/games/" + nextId + ".json", function(game) {
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
  });
});
</script>

<br><br><br><button class="js-next" data-id="<%= @game.id %>">Next Game >></button> --> -->
