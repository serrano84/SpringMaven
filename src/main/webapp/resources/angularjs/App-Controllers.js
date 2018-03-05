angular.module('sistemaPagosApp.controllers')
.controller('Mycontrol', function($scope, sistemaPagosFactory){
	
	 $scope.alumno= {
		        nombre: undefined,
		        apellido: undefined
     };
	
	$scope.getDatos = function() {
            alert('entro');
            sistemaPagosFactory.getDatos()
			.success(function(data){				
				$scope.alumno = data;
			})
			.error(function() {

				// TODO
			});
		};
		
	
});

