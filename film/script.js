var omdb = $('#title').serializeArray().reduce(function(obj, item) {
    var params={};window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi,function(str,key,value){params[key] = value;});      // --> query: "1990"
    var search = params['title'];
    $.getJSON("http://www.omdbapi.com/?s="+ search + "&y=&plot=short&r=json", function(data){
      console.log(data);
    });
}, {});
