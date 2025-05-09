# Resumen Clase 1 - Base de Datos

¡Bienvenido al repositorio de **Base de Datos** del Politécnico Malvinas Argentina! Este repositorio contiene los archivos y recursos utilizados en las clases de SQL.

---

## 🌟 Coceptos básicos

- **¿Que SQL?**:

        SQL es un lenguaje de programación que se utiliza especificamente para crear editar, modificar base de datos.

- **¿Que es una Entidad?**

        Un entidad es una representación de algo ejemplo:(Tabla), es como un dibujo representa eso, Como un dibujo de una.

        En las entidades guardamos información en base de datos, un ejemplo de entidad:

        Tienda en linea (Entidades): Clientes, Productos, Ordenes de compra proveedores.

        La nomentlatura que se usa para nombrar las entidades se llama "NOTACIÓN DE CHEN"

- **¿Que es el modelo de Notación Chen?**

        Para utilizar la nomenclatura de notación de chen es solo identificar el tipo de identidad que tenemos ejemplo: "Casa" Encerramos a casa en un cuadrado.

        Que hace que una entidad hace que una entidads sea una entidad (SUS ATRIBUTOS). EJ: Una casa no es una casa si no tubiera ambientes, ubicacion, tamaño, precio, etc.

        Los ATRIBUTOS Se representan con un dibujo de ovalo. Para identificar usaremos solo texto (1. OVALO CON UN BORDE, 2. OVALO CON DOS BORDES, 3 OVALO DE CON BORDE PUNTEADO.).
    
    0. Entidad = Casa

    1. Atributos simple: Tamaño, Dirección, Precio, Fecha de Construcíon, Propietario.
        - Las entidades simples son datos unicos. para identificar hacer una entidad compuesta es sacar lineas a otras entidad ej: 
            Ambiente -> Tamaño, Tipo (Living, Cocina).
    
    2. Atributos multiValor: Ambiente Vetanas, Puertas. 
        - En este caso este atributo tiene mas valores, medidas o cantidad del mismo, ej:
            (Living, cuarto, "TAMAÑO"), (Ventanas planta baja, ventiluz, "TAMAÑO"), (Puerta dormitorios, Puerta principal, "TAMAÑO")

    3. Atributos derivados: Ubicación, Antigüedad.
        - Se puede obtener la onformación de otro atributo. ej:
            Antiguedad se puede obtener su información con "Fecha de construcción".
            Ubicación y la ubicacíon la podemos tener de "Dirección".

- **Clave key ¿Que es?**

        Es una forma única de identificar una "Entidad" ej: id_vivienda
        Key es un atributo que agregamos a una entidad para identificar que es único e inrepetible.

---

## 🚀 Ahora a escribir algo de codigo para entender un poco: 


