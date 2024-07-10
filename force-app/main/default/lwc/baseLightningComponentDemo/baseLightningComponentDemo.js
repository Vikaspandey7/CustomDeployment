import { LightningElement, api} from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import Type from '@salesforce/schema/Account.Type'
import Industry from '@salesforce/schema/Account.Industry'
import Name from '@salesforce/schema/Account.Name'
export default class BaseLightningComponentDemo extends LightningElement {
    //@api recordId
    //@api objectNmae
    clickedButtonLabel;
    objectApiName = ACCOUNT_OBJECT
    fileds = {
       //accountField: ACCOUNT_FIELD,
        nameField: Name,
        typeField: Type,
        industryField: Industry

    }
    // 001Ig000004aD40IAE
    
    clickedButtonLabel;

    handleClick(event) {
        this.clickedButtonLabel = event.target.label;
    }
}