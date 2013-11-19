window.App = {
  Views: {},
  Models: {},
  Collections: {},

  initialize: function() {
    alert("Hello, from backbone!");
  }
};

$(function() {
  App.initialize();

  $.ajaxPrefilter("json", function(options) {
    if (options.headers === undefined) {
      options.headers = {};
    }
    options.headers['Accept'] = 'application/json';
  });
});
