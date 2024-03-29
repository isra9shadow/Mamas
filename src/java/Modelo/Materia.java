/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.LinkedList;

/**
 *
 * @author isra9
 */
public class Materia {

    private int id;
    private String nombre;
    private String descripcion;
    private Profesor profesor;
    private LinkedList<Estudiante> estudiantes;
    private LinkedList<Examen> examenes;
    private LinkedList<Pregunta> preguntas;

    public Materia() {
    }

    public Materia(int id, String nombre, String descripcion) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.estudiantes = new LinkedList<Estudiante>();
        this.profesor = new Profesor();
        this.preguntas = new LinkedList<Pregunta>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void addAlumno(Estudiante e) {
        this.estudiantes.add(e);
    }

    public void removeAlumno(Estudiante e) {
        this.estudiantes.remove(e);
    }

    public LinkedList<Estudiante> getEstudiantes() {
        return estudiantes;
    }

    public void setEstudiantes(LinkedList<Estudiante> estudiantes) {
        this.estudiantes = estudiantes;
    }

    public Profesor getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
    }

    public LinkedList<Examen> getExamenes() {
        return examenes;
    }

    public void setExamenes(LinkedList<Examen> examenes) {
        this.examenes = examenes;
    }

    public LinkedList<Pregunta> getPreguntas() {
        return preguntas;
    }

    public void setPreguntas(LinkedList<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }

    public void addPregunta(Pregunta p) {
        this.preguntas.add(p);
    }

    @Override
    public String toString() {
        return "Materia{" + "id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", profesor=" + profesor + ", estudiantes=" + estudiantes + ", examenes=" + examenes + '}';
    }

}
