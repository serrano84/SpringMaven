angular.module('sistemaPagosApp.services') 
.factory('sistemaPagosFactory', ['$http', function($http) {
	
	  
	  var factoryArray ={};
	 
	  factoryArray.getDatos = function() {
			console.log('GET:getDatos URL[AlumnoCtrl]');
			return $http({
				url: 'alumnosCtrl/getDatosAlumnos',
				method: 'POST',
				contentType: 'application/json'
			});
		};		
    
	return factoryArray;
}]);	