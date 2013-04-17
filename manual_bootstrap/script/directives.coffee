app.directive 'demoGreet', ($parse)->
	link_fn = (scope, l_element, attrs)->
		console.log 'link', scope, l_element, attrs
		l_element.addClass 'linking'
		return
	directive =
		link: link_fn
	return directive