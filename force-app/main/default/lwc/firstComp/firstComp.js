import { LightningElement, track } from 'lwc';

export default class FirstComp extends LightningElement {
    @track welcomeNote = 'Hello Everyone';
    inputValue = '!';
    handleInputChange(event){
        console.log(event.target.value);
        this.welcomeNote= event.target.value;

    }
}