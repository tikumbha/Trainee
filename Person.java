import java.util.*;
public class Person
{
 public static void main(String[] args)
 {
  PersonDetail per=new PersonDetail();
  per.readP();
  per.displayP();
 }
}
 class PersonDetail
{
 public void readP()
{
 String fn,ln;
 char gndr;
 int age;
 float wt;
  System.out.println("Enter First name:");
  Scanner sc=new Scanner(System.in);
  fn=sc.nextLine();
  System.out.println("Enter Last name:");
  ln=sc.nextLine();
  /*System.out.println("Enter gender(F/M):");
  gndr=sc.nextchar();*/
  System.out.println("Enter age:");
  age=sc.nextInt();
  System.out.println("Enter weight:");
  wt=sc.nextFloat();
}
 public void displayP()
{
 String fn,ln;
 char gndr;
 int age;
 float wt;
 System.out.println("Person details:");
 System.out.println("First name:"+fn);
 System.out.println("Last name:"+ln);
 System.out.println("Gender:"+gndr);
 System.out.println("Age:"+age);
 System.out.println("Weight:"+wt);
}

}
