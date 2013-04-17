app.directive 'demoGreet', ($parse)->
	link_fn = (scope, l_element, attrs)->
		scope.$watch attrs.demoGreet, (name)->
			display_name = if name then name else 'Anonymous'
			l_element.text "Hello, #{display_name}!"
			l_element.bind 'click', ()->
				scope.$apply ()->
					$parse(attrs.demoGreet).assign(scope, 'Amp')
	directive =
		link: link_fn
	return directive