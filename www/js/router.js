$(document).ready(function(){

$.sammy(function(){
  this.get("#/",function(){
    console.log("#/");
  });
  this.get("#/bingo",function(){
    console.log("bingo");
    this.render("templates/board.html",function(data){
      $("#main").html(data);
    });
  });
}).run();
});
