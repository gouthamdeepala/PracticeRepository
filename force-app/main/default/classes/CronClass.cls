global class CronClass implements schedulable {
    global void execute(schedulablecontext sc){
ScheduleClassEX testobj = new ScheduleClassEX();
String cronexpression = '0 0 21 ? * * *';
System.schedule('jobName', cronexpression, testobj);
        }
}