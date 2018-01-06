DROP MATERIALIZED VIEW PAYMENTPART;
DROP TABLE PAYMENTPART;
CREATE TABLE PaymentPart (
    ID NUMBER(10),
    AmountPaid NUMBER(12,2) CONSTRAINT AmountPaidReqPart NOT NULL,
    PaymentDate DATE CONSTRAINT PaymentDateReqPart NOT NULL,
    IsCardPayment NUMBER(1) CONSTRAINT IsCardPaymentReqPart NOT NULL
)

PARTITION BY RANGE (AmountPaid)
(
PARTITION few VALUES LESS THAN (4000),
PARTITION more VALUES LESS THAN (6000),
PARTITION lot VALUES LESS THAN (MAXVALUE)
);

EXEC DBMS_REDEFINITION.can_redef_table(USER, 'Payment');

BEGIN
  DBMS_REDEFINITION.start_redef_table(
    uname      => USER,        
    orig_table => 'Payment',
    int_table  => 'PaymentPart');
END;
/
BEGIN
  dbms_redefinition.sync_interim_table(
    uname      => USER,        
    orig_table => 'Payment',
    int_table  => 'PaymentPart');
END;
/


SET SERVEROUTPUT ON
DECLARE
  l_errors  NUMBER;
BEGIN
  DBMS_REDEFINITION.copy_table_dependents(
    uname            => USER,
    orig_table       => 'Payment',
    int_table        => 'PaymentPart',
    copy_indexes     => DBMS_REDEFINITION.cons_orig_params,
    copy_triggers    => TRUE,
    copy_constraints => TRUE,
    copy_privileges  => TRUE,
    ignore_errors    => FALSE,
    num_errors       => l_errors,
    copy_statistics  => FALSE,
    copy_mvlog       => FALSE);
    
  DBMS_OUTPUT.put_line('Errors=' || l_errors);
END;
/

ALTER TABLE PaymentPart ADD (
  CONSTRAINT PaymentPartPK PRIMARY KEY (id)
);

BEGIN
  dbms_redefinition.finish_redef_table(
    uname      => USER,        
    orig_table => 'Payment',
    int_table  => 'PaymentPart');
END;
/
DROP TABLE PaymentPart CASCADE CONSTRAINTS;

ALTER TABLE PAYMENT RENAME CONSTRAINT PaymentPartPK TO PKID;
