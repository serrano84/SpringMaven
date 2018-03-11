package com.sistema.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sistema.beans.Alumno;
import com.sistema.beans.Cliente;

@Controller
@CrossOrigin("*")
@RequestMapping(value="alumnosCtrl")
public class AlumnoController {
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		System.out.println("Index de pages");
		return "alumno";
	}
	
	@RequestMapping(value="/hola", method=RequestMethod.GET)
	public String hola(){	
		
	//	System.out.println("valores de persona cambio: " + persona.getApellido());
		return "hola";
	}
	

	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/getDatosCliente", method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity getDatosCliente(){
		System.out.println("llego al metodo getDatosCliente");
		Cliente cliente = new Cliente();
		cliente.setNombre("Luis222");
		cliente.setApellido("Serrano");
		cliente.setRfc("sedl84");
		cliente.setGrupo(2);
		return new ResponseEntity<>(cliente, HttpStatus.OK);
	}
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/getDatosAlumnos", method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity getDatos(){
		System.out.println("llego al metodo getDatosAlumnos");
		Alumno alumno = new Alumno();
		alumno.setNombre("Juanelo");
		alumno.setApellido("Simpsons");
		return new ResponseEntity<>(alumno, HttpStatus.OK);
	}
	
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/variable/{palabra}",/* produces="application/json; charset=UTF-8", */ method=RequestMethod.POST)
	public ResponseEntity home(@PathVariable String palabra) {
		System.out.println("llega " + palabra);
		return new ResponseEntity<> (null, HttpStatus.OK);
		
	}
	
	

}
