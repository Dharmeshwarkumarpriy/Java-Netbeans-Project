/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.balog.helper;

/**
 *
 * @author dell
 */
public class Helper {
    public static String get10word(String desc){
        String[] strs=desc.split(" ");
        if(strs.length>15){
            
            String res=" ";
            for(int i=0;i<10;i++){
                res=res+strs[i]+" ";
            }
            return (res+"...");
        }else{
            return (desc+"...");
        }
        
    }
    
    
    
}
