#Quantitat de registres de la taula de vols

SELECT 
    count(*) as QuantitatDeRegistres
FROM
    ejercicios.flights
    
    
    
    
#Retard promig de sortida i arribada segons l’aeroport origen

SELECT 
    a.airport,
    a.iata,
    AVG(ArrDelay) AS AverageArrDelay,
    AVG(DepDelay) AS AverageDepDelay
FROM
    flights f
        LEFT JOIN
    airports a ON f.origin = a.iata
GROUP BY f.origin




#Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen. A més, 
#volen que els resultat es mostrin de la següent forma (fixa’t en l’ordre de les files)

SELECT 
    Origin, Year, Month, AVG(ArrDelay)
FROM
    flights
GROUP BY 1 , 2 , 3
ORDER BY origin , Year , month
    
    
    
    
#Retard promig d’arribada dels vols, per mesos i segons l’aeroport origen (mateixa consulta que
#abans i amb el mateix ordre). Però a més, ara volen que en comptes del codi de l’aeroport es mostri 
#el nom de la ciutat ↓

SELECT 
    a.airport, Year, Month, AVG(ArrDelay)
FROM
    flights f
        LEFT JOIN
    airports a ON f.origin = a.iata
GROUP BY Origin , Year , Month
ORDER BY origin , Year , month




#Les companyies amb més vols cancelats. A més, han d’estar ordenades de forma que les companyies
#amb més cancel·lacions apareguin les primeres 

SELECT 
    UniqueCarrier, SUM(Cancelled) as CancelledFlights
FROM
    ejercicios.flights
GROUP BY 1
ORDER BY 2 DESC




#L’identificador dels 10 avions que més distància han recorregut fent vols

SELECT 
   tailnum, SUM(distance) as TotalDistance
FROM
    ejercicios.flights
GROUP BY TailNum
ORDER BY 2 DESC
LIMIT 11




#Companyies amb el seu retard promig només d’aquelles les quals els seus
#vols arriben al seu destí amb un retràs promig major de 10 minuts

SELECT 
    UniqueCarrier,
    AVG(ArrDelay + depdelay) AS retardoPromedioCompany
FROM
    flights
GROUP BY 1
HAVING retardoPromedioCompany >= 10
ORDER BY retardoPromedioCompany


