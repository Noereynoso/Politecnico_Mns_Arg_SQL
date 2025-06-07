# Crear una lista de listas con nombres y edades
personas = [["Ana", 25], ["Juan", 30], ["Lucía", 22]]

# Agregar una nueva persona (simplemente añadiendo una nueva lista)
personas.append(["Carlos", 28])

# Mostrar todas las claves y valores usando un bucle
print("Lista de personas y edades:")
for persona in personas:
    print(f"Nombre: {persona[0]}, Edad: {persona[1]}")
