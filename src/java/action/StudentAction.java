
package action;

import service.LoginAction;
import service.AddDetail;

/**
 * 
 * @author Mukesh Kumar Maurya
 */


public class StudentAction {
   private String Name;
   private String Roll;
   private String Pass;
   private String Fname;
   private String Dob;
   private String Mob;
   private String Email;
   private String Add;

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getAdd() {
        return Add;
    }

    public void setAdd(String Add) {
        this.Add = Add;
    }

    public String getDob() {
        return Dob;
    }

    public void setDob(String Dob) {
        this.Dob = Dob;
    }

    public String getMob() {
        return Mob;
    }

    public void setMob(String Mob) {
        this.Mob = Mob;
    }
   
    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getFname() {
        return Fname;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }
    public String getRoll() {
        return Roll;
    }

    public void setRoll(String Roll) {
        this.Roll = Roll; 
    }
    public String execute()
    {
     LoginAction la =new LoginAction();
     String s = la.login(this);
    if(s.equals("SUCCESS"))
     return "SUCCESS";
     else
     return "ERROR";    
    }
    public String detailAdd()
    {
     AddDetail ad=new AddDetail();
     String s = ad.addDetail(this);
    if(s.equals("SUCCESS"))
     return "SUCCESS";
     else
     return "ERROR";
    
    }
    
}

