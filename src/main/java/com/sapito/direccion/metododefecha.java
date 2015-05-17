/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.direccion;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author omar
 */
public class metododefecha {
   
    public Date fechainicio() {
        Calendar cal = Calendar.getInstance();
        cal.set(cal.get(Calendar.YEAR),
                cal.get(Calendar.MONTH),
                cal.getActualMinimum(Calendar.DAY_OF_MONTH));
      
        return cal.getTime();
    }

    public Date fechafin() {
      Calendar cal = Calendar.getInstance();
        cal.set(cal.get(Calendar.YEAR),
                cal.get(Calendar.MONTH),
                cal.getActualMaximum(Calendar.DAY_OF_MONTH)
        );
        return cal.getTime();
    }
}
