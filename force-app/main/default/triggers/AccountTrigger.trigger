trigger AccountTrigger on Account (before insert) {
    if(Trigger.IsBefore && Trigger.IsInsert){
     for(Account acc: Trigger.New){//
        System.debug('Hi! I m account trigger');
     }
    }
}