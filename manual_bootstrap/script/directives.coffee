app.directive 'demoGreet', ($parse)->
	link_fn = (scope, l_element, attrs)->
		console.log 'link', scope, l_element, attrs
	compile_fn = (c_element, attrs)->
		console.log 'compile', c_element, attrs
		return link_fn
	directive =
		compile: compile_fn
	return directive