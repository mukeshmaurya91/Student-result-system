/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import service.AddMarks;
import service.Marks;

/**
 *
 * @author Mukesh Kumar Maurya
 */
public class ResultAction {
    private String roll;
    private int sub1;
    private int sub2;
    private int sub3;
    private int sub4;
    private int sub5;
    private int sub6;
    private int total;
    private double per;
    private String grade;

    public int getSub1() {
        return sub1;
    }

    public void setSub1(int sub1) {
        this.sub1 = sub1;
    }

    public int getSub2() {
        return sub2;
    }

    public void setSub2(int sub2) {
        this.sub2 = sub2;
    }

    public int getSub3() {
        return sub3;
    }

    public void setSub3(int sub3) {
        this.sub3 = sub3;
    }

    public int getSub4() {
        return sub4;
    }

    public void setSub4(int sub4) {
        this.sub4 = sub4;
    }

    public int getSub5() {
        return sub5;
    }

    public void setSub5(int sub5) {
        this.sub5 = sub5;
    }

    public int getSub6() {
        return sub6;
    }

    public void setSub6(int sub6) {
        this.sub6 = sub6;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public double getPer() {
        return per;
    }

    public void setPer(double per) {
        this.per = per;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getRoll() {
        return roll;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }
    
    
    public String execute()
    {  
        
        Marks mk= new Marks();
        String is = mk.getResult(this,this.getRoll());
        this.setTotal(this.getSub1()+this.getSub2()+this.getSub3()+this.getSub4()+this.getSub5()+this.getSub6());
        this.setPer(this.getTotal()/6.0);
        this.setGrade(this.grade());
        if(is.equals("SUCCESS"))
        return "SUCCESS";
        else
            return "ERROR";
    }
    public String grade(){
    
    if(this.getPer()>=60)
        return "First";
    else if(this.getPer()>=50)
        return "Second";
     else if(this.getPer()>=33)
        return "Third";
      else
            return "Fail";
    }
    
    public String addMark(){
    String s;
    AddMarks am=new AddMarks();
    s=am.addSubMarks(this);
    if(s.equals("SUCCESS"))
        return "SUCCESS";
        else
            return "ERROR";
    
    }
}
