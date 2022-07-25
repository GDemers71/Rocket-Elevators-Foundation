
    
// function to choose the building type by user
// declaration of many variables that are used in JQuery
$(function() {
	var numberOfApartments = 0;
	var numerOfBasements = 0;
	var numberOfCompanies = 0;
	var numberOfCorporations = 0;
	var numberOfElevators = 0;
	var numberOfFloors = 0;
	var numberOfParkingSpots = 0;
	var maximumOccupancy = 0;
	var businessHours = 0;
	var totalNumberOfOccupants = 0;
	var numberOfCages = 0;
	var Fees = 0;
	var instFees = 0;
	var elevatorUnitPrice = 0;
	var calcul = 0;	
	var totalFees = 0;
	var tPrice = 0;
	var totalFloors = 0;
	var totalMaxOcc = 0;
	var numberOfShafts = 0;
	var avgElevatorsByColumn = 0;
	var numberOfElevatorShaft = 0;
	var numberOfColumns = 0;
	var finalPrice = 0;
// 	console.log(numberOfApartments , " = nombre dapp")
// 	console.log("hello world")


	$('.buildingType').on('click', function () {
		initialize();
	});



	function initialize() {
		$('.formField').val('');
		$('.formFieldReadOnly').val(0)
		$('.quality_of_service').prop('checked', false);
	};
	
// DEBUT OF RESIDENTIAL
	$("input").click(function() {
		console.log("clicker")
		
		if ($("#quote_building_type_residential").is(":checked")) {
			$("#quote_number_of_apartments").hide();
			$("#quote_number_of_floors").hide();
			$("#quote_number_of_basement").hide();
			$("#quote_number_of_businesses").hide();
			$("#quote_number_of_parking_space").hide();
			$("#quote_number_of_elevator_cages").hide();
			$("#quote_number_of_seperate_tenant_companies").hide();
			$("#quote_maximum_number_of_occupants_per_floor").hide();
			$("#quote_hours_of_activity").hide();
			$(".residential, .commercial, .corporate, .hybrid").hide();
			$(".residential").show();

			// $('.quality_of_service').on('click', function () {
			// 	// function to give the price of the product line choosen by user
			$(".quality_of_service").click(function() {
				elevatorUnitPrice = $(this).val()
				// console.log("elevator unit price is:", $(this).val());	
			$("#quote_unit_price_of_each_elevator").val(elevatorUnitPrice);
				// console.log("the number is:", $(this).val());
				// console.log($("#quote_unit_price_of_each_elevator").val(), "= quote_unit_price_of_each_elevator" )
				// console.log($("#quote_number_of_elevator_cages").val(), "= quote_number_of_elevator_cages")
			$("#quote_total_price_of_the_elevators").val($("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val());
				console.log("Elevator total price is :", $("#quote_total_price_of_the_elevators").val());
		
			// to get the installation fees automatically


				if ($("#quote_quality_of_elevator_service_7565").is(":checked")) {
					
					Fees = 0.1;
					
				  
				  }
				  if ($("#quote_quality_of_elevator_service_12345").is(":checked")) {
					
					Fees = 0.13;
					
				   
				  }
				  if ($("#quote_quality_of_elevator_service_15400").is(":checked")) {
					
					Fees = 0.16;
				  }
				// console.log("fees are", + Fees) ;
				// console.log($("#result").val(), "= resilt ID" )
				doCal();						
			})	
		
			

		function doCal() {

			
			// getting the values from user and some mathematics !
				$("input").on("change click keyup", function() {
					numberOfApartments = $("#quote_number_of_apartments").val()
					// console.log("number-of-apartments is:", $("#quote_number_of_apartments").val());

					numberOfFloors = $("#quote_number_of_floors").val()
					//console.log("number-of-floors is:", $("#quote_number_of_floors").val());
					avgOfApartByFloor = numberOfApartments / numberOfFloors
					//console.log("The average of apartment per floor is:" + avgOfApartByFloor);
					numberOfElevatorShaft = Math.ceil(avgOfApartByFloor / 6)
					//console.log("The nb of elevator shaft required :" + numberOfElevatorShaft);
					
					numberOfColumns = Math.ceil(numberOfFloors / 20)
					//console.log("The number of columns is:" + numberOfColumns)

					// to calculate the number of elevators needed (shafts * columns)
					numberOfElevators = numberOfElevatorShaft * numberOfColumns
					
					// to calculate the amount of elevator needed 
					$("#quote_amount_of_elevator_needed").val(numberOfElevators);
					//console.log("Elevator amount needed", numberOfElevators);

					
					// to calculate the total price
					tPrice = numberOfElevators * elevatorUnitPrice
					$("#quote_total_price_of_the_elevators").val(tPrice);
					console.log("Result is:", tPrice);
					// $("#quote_total_price_of_the_elevators").val(tPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");

					// to calculate the installation fees
					instFees = $("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val() * Fees;
					//console.log("The total price is:", instFees);
					$("#quote_installation_fees").val(instFees);
					// $("#quote_installation_fees").val(instFees.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");

					// to calculate final price
					$("#quote_final_price").val(instFees + tPrice);
					finalPrice = +instFees + +tPrice
					// $("#quote_final_price").val(finalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");
				
			});

		}}	
//END OF RESIDENTIAL

//DEBUT OF COMMERCIAL
		if ($("#quote_building_type_commercial").is(":checked")) {
			$("#quote_number_of_apartments").hide();
			$("#quote_number_of_floors").hide();
			$("#quote_number_of_basement").hide();
			$("#quote_number_of_businesses").hide();
			$("#quote_number_of_parking_space").hide();
			$("#quote_number_of_elevator_cages").hide();
			$("#quote_number_of_seperate_tenant_companies").hide();
			$("#quote_maximum_number_of_occupants_per_floor").hide();
			$("#quote_hours_of_activity").hide();
			$(".residential, .commercial, .corporate, .hybrid").hide();
			$(".commercial").show();

			// function to give the price of the product line choosen by user

			$(".quality_of_service").click(function() {
				elevatorUnitPrice = $(this).val()
				//console.log("elevator unit price is:", $(this).val());	
			$("#quote_unit_price_of_each_elevator").val(elevatorUnitPrice);
				//console.log("the number is:", $(this).val());
			$("#quote_total_price_of_the_elevators").val($("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val());
				//console.log("Elevator total price is :", $("#quote_total_price_of_the_elevators").val());
			
				if ($("#quote_quality_of_elevator_service_7565").is(":checked")) {
					
					Fees = 0.1;
					
				  
				  }
				  if ($("#quote_quality_of_elevator_service_12345").is(":checked")) {
					
					Fees = 0.13;
					
				   
				  }
				  if ($("#quote_quality_of_elevator_service_15400").is(":checked")) {
					
					Fees = 0.16;
				  }
				// console.log("fees are", + Fees) ;
				// console.log($("#result").val(), "= resilt ID" )
										
			doCal()
				
			})
			
			function doCal() {

			// getting the values from user and some mathematics !
			$("input").change(function() {
				numberOfCages = $("#quote_number_of_elevator_cages").val()
				//console.log("number-of-cages is", numberOfCages);
				
				$("#quote_amount_of_elevator_needed").val(numberOfCages);
				//console.log("Elevator amount needed", numberOfCages);

				// to calculate the total price
				$("#quote_total_price_of_the_elevators").val(numberOfCages * elevatorUnitPrice);
				//console.log("Result is:", + elevatorUnitPrice);
				tPrice = (numberOfCages * elevatorUnitPrice);
				// $("#quote_total_price_of_the_elevators").val(tPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "$");

				// to calculate the installation fees
				instFees = $("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val() * Fees;
				//console.log("Installation price:", tPrice);
				$("#quote_installation_fees").val(instFees);
				// $("#quote_installation_fees").val(instFees.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "$");

				// to calculate final price
				$("#quote_final_price").val(instFees + tPrice);	
				finalPrice = +instFees + +tPrice
				// $("#quote_final_price").val(finalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "$");
			});
					
		}}
// END OF COMMERCIAL

// DEBUT OF CORPORATE
		if ($("#quote_building_type_corporate").is(":checked")) {
			$("#quote_number_of_apartments").hide();
			$("#quote_number_of_floors").hide();
			$("#quote_number_of_basement").hide();
			$("#quote_number_of_businesses").hide();
			$("#quote_number_of_parking_space").hide();
			$("#quote_number_of_elevator_cages").hide();
			$("#quote_number_of_seperate_tenant_companies").hide();
			$("#quote_maximum_number_of_occupants_per_floor").hide();
			$("#quote_hours_of_activity").hide();
			$(".residential, .commercial, .corporate, .hybrid").hide();
			$(".corporate").show();

			// function to give the price of the product line choosen by user

			$(".quality_of_service").click(function() {
				elevatorUnitPrice = $(this).val()
				console.log("elevator unit price is:", $(this).val());	
			$("#quote_unit_price_of_each_elevator").val(elevatorUnitPrice);
				console.log("the number is:", $(this).val());
			$("#quote_total_price_of_the_elevators").val($("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val());
				console.log("Elevator total price is :", $("#quote_total_price_of_the_elevators").val());
			
			// to get the installation fees automatically

			if ($("#quote_quality_of_elevator_service_7565").is(":checked")) {
					
				Fees = 0.1;
				
			  
			  }
			  if ($("#quote_quality_of_elevator_service_12345").is(":checked")) {
				
				Fees = 0.13;
				
			   
			  }
			  if ($("#quote_quality_of_elevator_service_15400").is(":checked")) {
				
				Fees = 0.16;
			  }
			// console.log("fees are", + Fees) ;
			// console.log($("#result").val(), "= resilt ID" )
				doCal()					
		})


			function doCal() {

				// getting the values from user and some mathematics !
				$("input").change(function() {
					totalFloors = (+$("#quote_number_of_floors").val() + +$("#quote_number_of_basement").val())
					//console.log(totalFloors);
					maximumOccupancy = $("#quote_maximum_number_of_occupants_per_floor").val()
					totalMaxOcc = totalFloors * maximumOccupancy
					//console.log("The max occ is :", + totalMaxOcc);
					numberOfElevators = totalMaxOcc / 1000;
					//console.log("nbelev is:", numberOfElevators);
					numberOfShafts = totalFloors / 20;
					//console.log("nbshafts :", numberOfShafts);
					//divide nb elevators by nb of shafts
					avgElevatorsByColumn = numberOfElevators / numberOfShafts
					//console.log("The avg is :" + avgElevatorsByColumn);
					numberOfCages = Math.ceil(avgElevatorsByColumn * numberOfShafts)
					//console.log("number-of-cages is", numberOfCages);
					
					$("#quote_amount_of_elevator_needed").val(numberOfCages);
					//console.log("Elevator amount needed", numberOfCages);


					// to calculate the total price
					$("#quote_total_price_of_the_elevators").val(numberOfCages * elevatorUnitPrice);
					//console.log("Result is", + elevatorUnitPrice);
					tPrice = (numberOfCages * elevatorUnitPrice);
					// $("#quote_total_price_of_the_elevators").val(tPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");
					
					// to calculate the installation fees
					instFees = $("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val() * Fees;
					//console.log("Installation price:", tPrice);
					$("#quote_installation_fees").val(instFees);
					// $("#quote_installation_fees").val(instFees.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");

					// to calculate final price
					$("#quote_final_price").val(instFees + tPrice);	
					finalPrice = +instFees + +tPrice
					// $("#quote_final_price").val(finalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "$");


				});
			}}	
// END OF CORPORATE				

// DEBUT OF HYBRID
		if ($("#quote_building_type_hybrid").is(":checked")) {
			$("#quote_number_of_apartments").hide();
			$("#quote_number_of_floors").hide();
			$("#quote_number_of_basement").hide();
			$("#quote_number_of_businesses").hide();
			$("#quote_number_of_parking_space").hide();
			$("#quote_number_of_elevator_cages").hide();
			$("#quote_number_of_seperate_tenant_companies").hide();
			$("#quote_maximum_number_of_occupants_per_floor").hide();
			$("#quote_hours_of_activity").hide();
			$(".residential, .commercial, .corporate, .hybrid").hide();
			$(".hybrid").show();

			// function to give the price of the product line choosen by user

			$(".quality_of_service").click(function() {
				elevatorUnitPrice = $(this).val()
				console.log("elevator unit price is:", $(this).val());	
			$("#quote_unit_price_of_each_elevator").val(elevatorUnitPrice);
				console.log("the number is:", $(this).val());
			$("#quote_total_price_of_the_elevators").val($("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val());
				console.log("Elevator total price is :", $("#quote_total_price_of_the_elevators").val());
			
			// to get the installation fees automatically

			if ($("#quote_quality_of_elevator_service_7565").is(":checked")) {
					
				Fees = 0.1;
				
			  
			  }
			  if ($("#quote_quality_of_elevator_service_12345").is(":checked")) {
				
				Fees = 0.13;
				
			   
			  }
			  if ($("#quote_quality_of_elevator_service_15400").is(":checked")) {
				
				Fees = 0.16;
			  }
			// console.log("fees are", + Fees) ;
			// console.log($("#result").val(), "= resilt ID" )
				doCal()					
		})

		function doCal() {

			// getting the values from user and some mathematics !
			$("input").change(function() {
				totalFloors = (+$("#quote_number_of_floors").val() + +$("#quote_number_of_basement").val())
				//console.log(totalFloors);
				maximumOccupancy = $("#quote_maximum_number_of_occupants_per_floor").val()
				totalMaxOcc = totalFloors * maximumOccupancy
				//console.log("The max occ is :", + totalMaxOcc);
				numberOfElevators = totalMaxOcc / 1000;
				//console.log("nbelev is:", numberOfElevators);
				numberOfShafts = totalFloors / 20;
				//console.log("nbshafts :", numberOfShafts);
				//divide nb elevators by nb of shafts
				avgElevatorsByColumn = numberOfElevators / numberOfShafts
				//console.log("The avg is :" + avgElevatorsByColumn);
				numberOfCages = Math.ceil(avgElevatorsByColumn * numberOfShafts)
				//console.log("number-of-cages is", numberOfCages);
				
				$("#quote_amount_of_elevator_needed").val(numberOfCages);
				//console.log("Elevator amount needed", numberOfCages);


				// to calculate the total price
				$("#quote_total_price_of_the_elevators").val(numberOfCages * elevatorUnitPrice);
				//console.log("Result is", + elevatorUnitPrice);
				tPrice = (numberOfCages * elevatorUnitPrice);
				// $("#quote_total_price_of_the_elevators").val(tPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");
				
				// to calculate the installation fees
				instFees = $("#quote_unit_price_of_each_elevator").val() * $("#quote_amount_of_elevator_needed").val() * Fees;
				//console.log("Installation price:", tPrice);
				$("#quote_installation_fees").val(instFees);
				// $("#quote_installation_fees").val(instFees.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " $");

				// to calculate final price
				$("#quote_final_price").val(instFees + tPrice);	
				finalPrice = +instFees + +tPrice
				// $("#quote_final_price").val(finalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "$");


			});
		}}	
// END OF HYBRID					
	});	
});





// function to get the value of the choosen line product


function myFunction(line) {
	document.getElementById("result").value = line.value;
	//console.log("value is:" + line.id);
	};

function myFunction(line) {
	document.getElementById("result").value = line.id;
	//console.log("Fees :", + line.id);
	};
// THE END !