import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import NAME_FIELD from '@salesforce/schema/Contact.Name'
import TITLE_FIELD from '@salesforce/schema/Contact.Title'
import PHONE_FIELD from '@salesforce/schema/Contact.Phone'
import EMAIL_FIELD from '@salesforce/schema/Contact.Email'
import ACCOUNT_FIELD from '@salesforce/schema/Contact.AccountId'
export default class LightningRecordEditForm extends LightningElement {
    objectName = CONTACT_OBJECT
    fieldList = {
        accountFiled: ACCOUNT_FIELD,
        nameFiled: NAME_FIELD,
        titleFiled: TITLE_FIELD,
        phoneFiled: PHONE_FIELD,
        emailField: EMAIL_FIELD
    }

    onClickHandler(){
        const inputHandler = this.template.querySelectorAll('lightning-input-field')
        if(inputHandler){
            Array.from(inputHandler).forEach(field=>{
                field.reset()

            })
        }
    }
}