er los datos completos de los empleados
SELECT * FROM empleados;

#Obtener los datos completos de los departamentos
SELECT * FROM departamentos;

#Listar el nombre de los departamentos
SELECT nombre_depto FROM departamentos;

#Obtener el nombre y salario de todos los empleados
SELECT nombre, sal_emp FROM empleados;

#Listar todas las comisiones
SELECT comision_emp FROM empleados;

#Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’
SELECT cargo_emp FROM empleados WHERE cargo_emp = 'Secretaria';

#Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente
SELECT nombre FROM empleados WHERE cargo_emp = 'Vendedor' ORDER BY nombre ASC;

#Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a mayor
SELECT nombre, cargo_emp, sal_emp FROM empleados ORDER BY sal_emp ASC;

#Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas tablas de empleados
SELECT nombre, cargo_emp FROM empleados;

#Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión de menor a mayor
SELECT nombre, sal_emp, comision_emp FROM empleados WHERE id_depto = 2000 ORDER BY sal_emp ASC;

#Obtener el valor total a pagar que resulta de sumar el salario y la comisión de los empleados del departamento 3000 una bonificación de 500, en orden alfabético del empleado
SELECT (sal_emp + comision_emp) + 500 FROM empleados WHERE id_depto = 3000 ORDER BY nombre ASC;

#Muestra los empleados cuyo nombre empiece con la letra J
SELECT nombre FROM empleados WHERE nombre LIKE 'J%';

#Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos empleados que tienen comisión superior a 1000
SELECT sal_emp, comision_emp, (sal_emp + comision_emp), nombre FROM empleados WHERE comision_emp > 1000;

#Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión
SELECT sal_emp, comision_emp, (sal_emp + comision_emp), nombre FROM empleados WHERE comision_emp = 0;

#Obtener la lista de los empleados que ganan una comisión superior a su sueldo
SELECT * FROM empleados WHERE comision_emp > sal_emp;

#Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo
SELECT * FROM empleados WHERE comision_emp <= sal_emp * 0.3;

#Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT * FROM empleados WHERE nombre NOT LIKE 'MA%';
 
#Obtener los nombres de los departamentos que sean “Ventas” “Investigación” ‘Mantenimiento
SELECT nombre_depto FROM departamentos WHERE nombre_depto = 'Ventas' OR nombre_depto = 'Investigacion' OR  nombre_depto = 'Mantenimiento';

#Ahora obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘Mantenimiento.
SELECT nombre_depto FROM departamentos WHERE nombre_depto != 'Ventas' AND nombre_depto != 'Investigacion' AND  nombre_depto != 'Mantenimiento';

#Mostrar el salario más alto de la empresa
SELECT MAX(sal_emp) FROM empleados;

#Mostrar el nombre del último empleado de la lista por orden alfabético
SELECT MAX(nombre) FROM empleados ORDER BY nombre ASC;

#Hallar el salario más alto, el más bajo y la diferencia entre ellos
SELECT MAX(sal_emp) as "Sueldo Maximo", MIN(sal_emp) as "Sueldo minimo", MAX(sal_emp) - MIN(sal_emp) as "Diferencia" FROM empleados ;

#Hallar el salario promedio por departamento 
SELECT d.nombre_depto AS Departamento, AVG(e.sal_emp) FROM empleados e JOIN departamentos d ON e.id_depto = d.id_depto GROUP BY d.nombre_depto;

#Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de esos departamentos


#Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. Solo los que tengan más de dos empleados (2 incluido)

#Hallar los departamentos que no tienen empleados

#Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa. Ordenarlo por departamento
