global class ScheduleClassEX implements schedulable {
    global void execute(schedulablecontext sc) {
    BatchClassEx VarBatch = New BatchClassEx ();
        database.executeBatch(VarBatch, 200);
        }
}