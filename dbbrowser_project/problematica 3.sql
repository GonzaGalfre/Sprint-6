/*Seleccionar las cuentas con saldo negativo*/
SELECT account_id, customer_id, balance FROM cuenta WHERE balance<0;

/* Seleccionar el nombre, apellido y edad de los clientes que tengan en el 
apellido la letra Z */
SELECT customer_name , customer_surname , (date() - dob) as edad
from cliente 
WHERE substr(customer_surname,1,1) = 'Z';

/*Seleccionar el nombre, apellido, edad y nombre de sucursal de las personas 
cuyo nombre sea “Brendan” y el resultado ordenarlo por nombre de 
sucursal*/
SELECT customer_name , customer_surname , (date() - dob) as edad  ,  branch_name
from cliente , sucursal
WHERE customer_name = 'Brenda' AND cliente.branch_id = sucursal.branch_id;

/*Seleccionar de la tabla de préstamos, los préstamos con un importe mayor
a $80.000 y los préstamos prendarios utilizando la unión de 
tablas/consultas (recordar que en las bases de datos la moneda se guarda 
como integer, en este caso con 2 centavos)*/
SELECT * FROM prestamo WHERE loan_type = 'PRENDARIO' OR loan_total > 8000000;


/*Seleccionar los prestamos cuyo importe sea mayor que el importe medio de 
todos los prestamos*/

SELECT loan_id , loan_total , loan_type 
FROM prestamo INNER JOIN cliente ON cliente.customer_id = prestamo.loan_id
where loan_total > (SELECT avg(ALL loan_total) FROM prestamo);


/*falt terminar este punto bien bien*/

/*Contar la cantidad de clientes menores a 50 años
*/

SELECT count(ALL customer_name) as Mayor50 , customer_type  FROM cliente 
where (date() - dob) < 50
group by customer_type;

/*Seleccionar las primeras 5 cuentas con saldo mayor a 8.000$*/

SELECT account_id , customer_id , balance , iban , account_type FROM cuenta WHERE balance > 800000 ORDER by account_id
LIMIT 5;


/*Seleccionar los préstamos que tengan fecha en abril, junio y agosto, 
ordenándolos por importe*/

SELECT * from prestamo  WHERE (loan_date like '%-06-%') or (loan_date like '%-08-%') or (loan_date like '%-04-%')
ORDER by loan_total;

/*Obtener el importe total de los prestamos agrupados por tipo de préstamos. 
Por cada tipo de préstamo de la tabla préstamo, calcular la suma de sus 
importes. Renombrar la columna como loan_total_accu*/

SELECT sum(loan_total) as loan_total_Accu , loan_type FROM prestamo
GROUP by loan_type;