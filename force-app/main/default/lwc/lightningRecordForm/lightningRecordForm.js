import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Account_Object from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name'
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'
import TYPE_FIELD from '@salesforce/schema/Account.Type'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
export default class LightningRecordForm extends LightningElement 
{
    // to make record id dynamically 
    @api recordId
    @api objectApiName
     objectName = Account_Object
     fieldList = [NAME_FIELD, ANNUAL_REVENUE_FIELD, TYPE_FIELD, INDUSTRY_FIELD]

     successHandler(event){ // to show notification the account is created
        console.log(event.detail.id) // lightning record form passing id to successhandler that why we are using details.id
        const toastNew = new ShowToastEvent({
            title: "Account Created",
            message:"record Id:"+ event.detail.id,
            variant: "Success"
        })
        this.dispatchEvent(toastNew)
     }

}