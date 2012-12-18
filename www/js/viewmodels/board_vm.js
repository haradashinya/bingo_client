


window.BoardViewModel = function(){
  var self = this;
  console.log("called boardViewModel");

  self.balls = ko.observableArray([
    {number: 1},
    {number: 2},
    {number: 3}
  ]);



};