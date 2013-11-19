(function() {
  describe(".helloText", function() {
    When(function() {
      return this.result = helloText();
    });
    return Then(function() {
      return expect(this.result).toEqual("Hello, World!");
    });
  });

}).call(this);
