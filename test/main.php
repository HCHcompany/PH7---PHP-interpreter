<?php
require_once "test.php";

$add = 12 + 12;
print("Result: " . $add . "\n");

interface CarStruct{
	function getModel();
	function getYear();
}

class Car implements CarStruct{
	private $model;
	private $year;
	function __construct($model, $year){
		$this->model = $model;
		$this->year = $year;
	}

	function getModel(){
		return $this->model;
	}

	function getYear(){
		return $this->year;
	}
}

$new_car = new Car("Toyota", 2001);
print("Model: " . $new_car->getModel() . "\n");
print("Year: " . $new_car->getYear() . "\n");
?>