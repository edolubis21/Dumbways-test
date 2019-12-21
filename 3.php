<?php //php 7.0.8

   function primenumbers($m, $n){

$number = $n*$m;
    $numCounter = 0;
    $i = 0;
    while($numCounter < $number){
         $counter = 0; 
          for($j=1;$j<=$i;$j++){
                if($i % $j==0){ 
                      $counter++;
                }
          }
        if($counter==2){
            print $i." ";
            $numCounter++;
        }
        if($numCounter % $m == 0){
        print  "<br>";
        }   
        $i++;

    } 

}
echo primenumbers(4,3);
    
?>