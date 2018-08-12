<?php
/******************************************************
Escrito en PHP
Ing. José Carlos Anaya Chávez
*******************************************************/
function generarmatriz(){
	$matriz = [];
	for ($i=0; $i < 4; $i++){ 
		for ($j=0; $j < 4; $j++){ 
			 $matriz[$i][$j] = rand(0,1);
		}
	}
	for ($i=0; $i < 4; $i++){ 
		for ($j=0; $j < 4; $j++){ 
			 echo $matriz[$i][$j];
		}
		echo "<br/>";
	}
	return $matriz;
}

function sigGen($universo){
	echo "<br/>";
	//$matrizVecinos = [];
	$sigMatriz = [];
	for ($i=0; $i<4; $i++){ 

		for ($j=0; $j <4; $j++){ 
			$universo[$i][$j];
			$vecino=0;
			if($universo[$i-1][$j-1] == 1){
				$vecino++;
			}
			if($universo[$i-1][$j] == 1){
				$vecino++;
			} 
			if($universo[$i-1][$j+1] == 1){
				$vecino++;
			} 
			if($universo[$i][$j-1] == 1){
				$vecino++;
			} 
			if($universo[$i][$j+1] == 1){
				$vecino++;
			} 
			if($universo[$i+1][$j-1] == 1){
				$vecino++;
			}
			if($universo[$i+1][$j] == 1){
				$vecino++;
			}
			if($universo[$i+1][$j+1] == 1){
				$vecino++;
			}  			
			//Creamos la Siguiente Matriz para la continuar el juego
			if($universo[$i][$j]==1){
				if($vecino<=1 || $vecino>=4){
					$sigMatriz[$i][$j] = 0;
				}
				if($vecino==2 || $vecino==3){
					$sigMatriz[$i][$j] = 1;
				}
				}elseif($vecino==3){
						$sigMatriz[$i][$j] = 1;
				}else{
					$sigMatriz[$i][$j] = 0;
				}
			$vecino =0;  
		}
	}
	return $sigMatriz;
}

function imprimirmatriz($matrizimprir){
	for ($i=0; $i<4; $i++){ 
		for ($j=0; $j<4; $j++){ 
			 echo $matrizimprir[$i][$j];
		}
		echo "<br/>";
	}
}

echo "MATRIZ INCIAL <br/>";
$universo = generarmatriz();
$paso = sigGen($universo);
echo "SIGUIENTE ITERACION<br/>";
imprimirmatriz($paso);
?>