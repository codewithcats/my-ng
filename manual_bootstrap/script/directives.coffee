app.directive 'demoGreet', ($parse)->
	link_fn = (scope, l_element, attrs)->
		scope.$watch 'name', (name)->
			l_element.text "Hello, #{name}!"
			return
		return
	directive =
		link: link_fn
	return directive