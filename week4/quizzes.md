##  Quiz 4.2

### Question 1

Das Skalarprodukt 

	[2/7,3/7,6/7]%*%[x,y,z] 

(können wir in R ausrechnen) muss ~0 betragen. 

 	[2/7,3/7,6/7]%*%[x,y,z]  
 	
Passt z.B. für [-.937, .312, .156]

 	[2/7,3/7,6/7]%*%[-.937, .312, .156] = 0.000undeinpaarzerquetschte

### Question 2
 
Zunächst stellen wir die Formeln für die Skalarprodukte auf (muss bei orthogonalen Vektoren Null ergeben) und bringen das Ganze in ein Gleichungssystem.
 
 	[2/7,3/7,6/7]*[x,y,z] = 0
 	[6/7, 2/7, -3/7] * [x,y,z] = 0
 
 Wir stellen um, setzen ein und erhalten z.B.:
 
 	y = -3x
 
### Question 3
 
Hier muss man lediglich die Matrix der Punkte bilden

	1 1
	2 2
	3 4

und mit ihrer Transponierten multiplizieren

      	 	  1  1
        	  2  2
        	  3  4
   	   	   +------
	 1 2 3 | 14 17
	 1 2 4 | 17 21

Die richtige Antwort ist eines der Elemente [14,17,17,21]
 
 
### Question 4

Zwei Vektoren sind orthogonal, wenn ihr Skalarprodukt 0 ergibt.
 
	[1, -2, 1] * [1,2,3] = 0



