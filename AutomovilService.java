package service;

import java.util.*;
import model.Automovil;

public class AutomovilService {
    // Definición de los tres tipos de Map
    private Map<String, Automovil> hashMap = new HashMap<>(); // Sin orden garantizado [cite: 8]
    private Map<String, Automovil> linkedHashMap = new LinkedHashMap<>(); // Orden de inserción [cite: 9]
    private Map<String, Automovil> treeMap = new TreeMap<>(); // Orden alfabético por clave [cite: 10]

    public AutomovilService() {
        // Creamos los objetos de prueba
        Automovil a1 = new Automovil("Mazda", "Mazda3", "Rojo");
        Automovil a2 = new Automovil("Toyota", "Corolla", "Blanco");
        Automovil a3 = new Automovil("Chevrolet", "Spark", "Azul");

        // Llenamos las tres estructuras con los mismos datos
        agregar(a1);
        agregar(a2);
        agregar(a3);
    }

    private void agregar(Automovil a) {
        hashMap.put(a.getModelo(), a);
        linkedHashMap.put(a.getModelo(), a);
        treeMap.put(a.getModelo(), a);
    }

    public Map<String, Automovil> getHashMap() { return hashMap; }
    public Map<String, Automovil> getLinkedHashMap() { return linkedHashMap; }
    public Map<String, Automovil> getTreeMap() { return treeMap; }
}