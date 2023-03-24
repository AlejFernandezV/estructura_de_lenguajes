d = {"David Yates":"Harry Potter", "Anthony Ruso":"Avengers Endgame", "Matt Reeves":"The batman", "Todd Phillips":"Joker"}
print("PUNTO 2")
print("Directores: ",d.keys())

print("\nPUNTO 3")
d["Lee Unkrinch"] ="Toy Story"
print(d)

print("\nPUNTO 4")
nombreElim = input("Ingrese el nombre del director a eliminar: ")
del(d[nombreElim])

print("\nPUNTO 5")
d["Lee Unkrinch"] = "Toy Story 3"
print(d)

print("\nPUNTO 6")

if "Joaquin Acosta" in d:
    print("El director si se encuentra")
else:
    print("El director no se encuentra")



