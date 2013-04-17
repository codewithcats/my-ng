app.directive 'demoGreet', ($parse)->
	link_fn = (scope, l_element, attrs)->
		scope.$watch attrs.demoGreet, (name)->
			display_name = if name then name else 'Anonymous'
			l_element.text "Hello, #{display_name}!"
			return
		return
	directive =
		link: link_fn
	return directive