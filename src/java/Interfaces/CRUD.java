/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Persona;
import java.util.List;

/**
 *
 * @author WilangelSalsa
 */
public interface CRUD {
    public List Listar();
    public Persona List(int id);
    public boolean Add(Persona per);
    public boolean Edit(Persona per);
    public boolean Eliminar(int id);
    
}
