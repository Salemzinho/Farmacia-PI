/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.model;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author maris
 */

@Getter
@Setter
public class Produto {
    
    private int id;
    private String nome;
    private String fabricante;
    private int qtd;
    private double valor;
    
    @Override
    public String toString(){
        return "nome=" + nome + ", fabricante=" + fabricante + ", qtd=" + qtd + ", valor=" + valor;
    }
    
    
    
}
