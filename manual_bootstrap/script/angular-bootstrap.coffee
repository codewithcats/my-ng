window.onload = ()->
  $root_element = angular.element window.document
  config_fn = ($provide)->
    $provide.value '$rootElement', $root_element
    return
  modules = [ 'ng', 'manual_bootstrap', config_fn]
  $injector = angular.injector modules
  $compile = $injector.get '$compile'
  $composite_link_fn = $compile $root_element
  $root_scope = $injector.get '$rootScope'
  $composite_link_fn $root_scope

  $root_scope.$apply()
