void main(){
  var personelManager = PersonelManager();
  personelManager.add();

  var customerManager = CustomerManager();
  Person customer1 =new Customer.withInfo("AKIN","AYHAN");

  var customer2 = new Customer();
  customer2.firstName ="Akın";
  customer2.lastname = "Ayhan";

  customer1 = customer2;
  customer2.firstName = "Ahmet";

  customerManager.add(customer1);

  Personel personel1 = Personel();
  personel1.firstName = "Ali";

  var controller = PersonController();
  controller.operation(personel1);
}


class PersonController{
  void operation(Person person){
    print("Inheritance demo:" + person.firstName);
  }
}

class PersonelManager{
  void add(){
    print("Eklendi!");
  }

  void update(){
    print("Güncellendi");
  }

  void delete(){
    print("Silindi");
  }
}

class CustomerManager{
  void add(Customer customer){
    print("Eklendi : "+ customer.firstName);
  }

  void update(){
    print("Güncellendi");
  }

  void delete(){
    print("Silindi");
  }
}

class Customer extends Person{ 

    Customer(){
      
    }
    //constructor
    Customer.withInfo(String firstName, String lastname){
      this.firstName = firstName;
      this.lastname = lastname;
    }
  }

  class Personel extends Person{ 
    int dateOfStart;

    Personel(){
      
    }
    //constructor
    Personel.withInfo(String firstName, String lastname, int dateOfStart){
      this.firstName = firstName;
      this.lastname = lastname;
      this.dateOfStart = dateOfStart;
    }
  }

  class Person {
    String firstName;
    String lastname;
    String identityNumber;
  
  }