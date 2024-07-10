import { LightningElement, track } from 'lwc';

export default class HelloWorld extends LightningElement {
     /****** Data binding example *******/
    fullname = ' Pandey'
    title = 'Developer'
    changeHandler(event){ // it is a function that can be call HTML and through inside JS
        this.title = event.target.value// Use this keyword to access local properties in method(function)
    }

    /****** track binding example *******/
     @track address={
        city: 'Kalyan',
        PostalCode: 421306,
        country: 'India'
    }
    trackHandler(event){
        this.address.city = event.target.value; //Using Track operator
        //this.address = {...this.address, "city":event.target.value}  // Spread operator
        //this.userList[1]= event.target.value;
    }

    /****** Getter method example *******/
    users = ["Vikas","Shweta","Khushi"];
    // Requiement is to show the firstname of array in screen
    // Requiement is to add two number and display on screen
    num1=10
    num2=30

    get firstUser(){
        return this.users[0].toUpperCase();
    }

    get sumOfNumber(){
        return this.num1+this.num2;
    }
}