/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.activofijo;

/**
 *
 * @author Usuario
 */
public class Depreciacion
{

    private float valorADep;
    private float vidaUtil;
    private float añoUso;
    private float cuotaDep;
    private float resultado;
    private float tasa;
    private float i;
    private float VALORTOTAL = 0;

    public void LineaRecta(float valorADep, float vidaUtil, float añoUso)
    {
        setValorADep(valorADep);
        setVidaUtil(vidaUtil);
        setAñoUso(añoUso);
        setResultado(valorADep);

        setCuotaDep(getValorADep() / getVidaUtil());

        for(int i = 0; i < getAñoUso(); i++)
        {
            setResultado(getResultado() - getCuotaDep());
        }
        System.out.println("====lineaRecta=====" + getResultado());
        setVALORTOTAL(getVALORTOTAL() + getResultado());
        System.out.println(getVALORTOTAL());
    }

    public void DSD(float valorADep, float vidaUtil, float añoUso, float i)
    {
        setValorADep(valorADep);
        setAñoUso(añoUso);
        setVidaUtil(vidaUtil);
        float t2 = (float) ((100 / this.getVidaUtil()) * 2.0);
        t2 = t2 / 100;
        setTasa(t2);
        setI(i);
        float temp = (getValorADep() * getTasa());
        setCuotaDep(temp);

        this.setValorADep(getValorADep() - getCuotaDep());

        if(this.getI() < añoUso)
        {
            setI(i + 1);
            DSD(this.getValorADep(), this.getVidaUtil(), this.getAñoUso(), this.getI());
        } 
        else
        {
            //setI(i - 1);
            //if(getI() == 1)
            //{
                System.out.println("=====DSD======" + getValorADep());
                setVALORTOTAL(getVALORTOTAL() + getValorADep());
                System.out.println(getVALORTOTAL());
            //}
        }

    }

    public void Decreciente(float valorADep, float vidaUtil, float añoUso)
    {
        setVidaUtil(vidaUtil);
        setValorADep(valorADep);
        setAñoUso(añoUso);
        float valorDecreciente = getValorADep();
        float añoBaja = vidaUtil;
        while(getAñoUso() != 0)
        {
            float S = 0;
            float t = vidaUtil;

            for(int j = 0; j < getVidaUtil(); j++)
            {
                S = S + t;
                t--;
            }
            setCuotaDep(getValorADep() * (añoBaja / S));
            valorDecreciente = valorDecreciente - getCuotaDep();
            añoBaja = añoBaja - 1;
            setAñoUso(getAñoUso() - 1);
        }
        System.out.println("========DECRECIENTE=======" + valorDecreciente);
        setVALORTOTAL(getVALORTOTAL() + valorDecreciente);

        System.out.println(getVALORTOTAL());

    }

    /**
     * @return the valorADep
     */
    public float getValorADep()
    {
        return valorADep;
    }

    /**
     * @param valorADep the valorADep to set
     */
    public void setValorADep(float valorADep)
    {
        this.valorADep = valorADep;
    }

    /**
     * @return the vidaUtil
     */
    public float getVidaUtil()
    {
        return vidaUtil;
    }

    /**
     * @param vidaUtil the vidaUtil to set
     */
    public void setVidaUtil(float vidaUtil)
    {
        this.vidaUtil = vidaUtil;
    }

    /**
     * @return the añoUso
     */
    public float getAñoUso()
    {
        return añoUso;
    }

    /**
     * @param añoUso the añoUso to set
     */
    public void setAñoUso(float añoUso)
    {
        this.añoUso = añoUso;
    }

    /**
     * @return the cuotaDep
     */
    public float getCuotaDep()
    {
        return cuotaDep;
    }

    /**
     * @param cuotaDep the cuotaDep to set
     */
    public void setCuotaDep(float cuotaDep)
    {
        this.cuotaDep = cuotaDep;
    }

    /**
     * @return the resultado
     */
    public float getResultado()
    {
        return resultado;
    }

    /**
     * @param resultado the resultado to set
     */
    public void setResultado(float resultado)
    {
        this.resultado = resultado;
    }

    /**
     * @return the tasa
     */
    public float getTasa()
    {
        return tasa;
    }

    /**
     * @param tasa the tasa to set
     */
    public void setTasa(float tasa)
    {
        this.tasa = tasa;
    }

    /**
     * @return the i
     */
    public float getI()
    {
        return i;
    }

    /**
     * @param i the i to set
     */
    public void setI(float i)
    {
        this.i = i;
    }

    /**
     * @return the VALORTOTAL
     */
    public float getVALORTOTAL()
    {
        return VALORTOTAL;
    }

    /**
     * @param VALORTOTAL the VALORTOTAL to set
     */
    public void setVALORTOTAL(float VALORTOTAL)
    {
        this.VALORTOTAL = VALORTOTAL;
    }

}
