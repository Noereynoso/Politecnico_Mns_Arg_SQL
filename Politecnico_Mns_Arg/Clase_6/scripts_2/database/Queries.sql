select * from clientes;
/* Crea un índice para mejorar la búsqueda por correo electrónico en la tabla clientes. */
select email from clientes; -- Esta consulta selecciona el campo email de la tabla clientes
create index idx_email on clientes(email); -- Este script crea un índice en la columna email de la tabla clientes
    --describe clientes; -- Este script describe la tabla clientes
    --SHOW indexes from clientes; -- Este script muestra los índices de la tabla clientes

select * from compras;
/* Crea un índice para mejorar la búsqueda por producto en la tabla compras. */
create index index_compras on compras(producto); -- Este script crea un índice en la columna producto de la tabla compras
    --describe compras; -- Este script describe la tabla compras
    --show indexes from compras; -- Este script muestra los índices de la tabla compras

/* Reescribe una consulta que obtenga solo el nombre y email de los clientes de Buenos Aires. */
select nombre, email, ciudad from clientes where ciudad='Buenos Aires'; -- Cambiadas las comillas dobles por simples

/* Reescribe una consulta que obtenga el nombre y monto de las compras realizadas por el cliente con id 1. */
select c.nombre, co.monto
from clientes c
join compras co on c.id_cliente = co.id_cliente
where c.id_cliente = 1;