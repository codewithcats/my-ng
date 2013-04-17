app.controller 'demo_ctrl', [
	'$scope', 
	($scope)->
		$scope.name = 'Amp'
		$scope.items = [
			{id: '007', content: 'J Bonds'}
			{id: '027', content: 'Amp Tanawat'}
		]
		$scope.selected_item = $scope.items[0]
		return
]