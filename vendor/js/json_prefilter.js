$(function() {
  $.ajaxPrefilter("json", function(options) {
    if (options.headers === undefined) {
      options.headers = {};
    }
    options.headers['Accept'] = 'application/json';
  });
});
