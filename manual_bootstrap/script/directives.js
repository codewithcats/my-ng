// Generated by CoffeeScript 1.6.1

app.directive('demoGreet', function($parse) {
  var directive, link_fn;
  link_fn = function(scope, l_element, attrs) {
    scope.$watch(attrs.demoGreet, function(name) {
      var display_name;
      display_name = name ? name : 'Anonymous';
      l_element.text("Hello, " + display_name + "!");
    });
  };
  directive = {
    link: link_fn
  };
  return directive;
});
