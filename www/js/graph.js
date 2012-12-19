


// Graph model about rendering
window.Graph = function(opts){
  this.expressions = [];
  this.height = window.innerHeight;
  this.width = window.innerWidth;
  var init = function(opts){
  };
  this.config = {
    height: this.height,
    width: this.width

  };
  return init(opts);
};

window.GraphController = function(){
  var expressions = [];
  var allExpressions = function(){
    return expressions;
  };
  var setup = function(){
    var f1 = function(x){ return x*x*x };
    var f2 = function(x){ return Math.cos(x) * Math.sin(x) };
    var f3 = function(x){return Math.exp(x)};
    [f1,f2,f3].map(function(exp){
      // set color
      exp.color = "#000";
      expressions.push(exp)
    },this);

    return {
      expressions: allExpressions()
    }


  };

  var render =  function(){

  };
  return {
    setup: setup,
    render: render
  }
};

window.square = function(num){
  return Math.pow(num,2);
};

window.cubic = function(num){
  return Math.pow(num,3);
};
window.pow = function(num,exp){
  return Math.pow(num,exp)

};


$(".draw-btn").bind("click",function(){
  console.log("clicked");
  console.log("hello world");

  var str = $(".area").val();
  var func = new Function("x",str);
  window.draw(func);
});


$(".clear-btn").bind("click",function(){
  window.clear();
});



















