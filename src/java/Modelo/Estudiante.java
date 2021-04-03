/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author isra9
 */
public class Estudiante extends Usuario {

    private Ciclo ciclo;

    public Estudiante(Ciclo ciclo, int id, String email, int isActive) {
        super(id, email, isActive);
       
    }

    public Estudiante(int id_user, String email, String password, int isActive, int intentos) {
        super(id_user, email, password, isActive, intentos);
    }

    public Estudiante(Ciclo ciclo) {
        this.ciclo = ciclo;
    }

    public Ciclo getCiclo() {
        return ciclo;
    }

    public void setCiclo(Ciclo ciclo) {
        this.ciclo = ciclo;
    }

}
