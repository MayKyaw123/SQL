/* Q4
Update this CalcFee() function script Download script 
so that the cancellation fees are enforced as follows:

Less than one day = 50
Less than 7 days = 25
Less than 30 days = 10 
*/

IF num_days_before_check_in < 1 THEN
SET fee_var = 50;
ELSEIF num_days_before_check_in < 7 THEN
SET fee_var = 25;
ELSEIF num_days_before_check_in < 30 THEN
SET fee_var = 10;
END IF;

/* Q5 */

INSERT INTO cancellations(guest_id, orig_check_in_date, 
orig_check_out_date, cancellation_date, cancellation_fee)
VALUES (OLD.guest_id, OLD.check_in_date, OLD.check_out_date, sysdate(), 
CalcFee(OLD.check_in_date));

/* Q6 */

SELECT *FROM viewReservation;
SELECT *FROM viewCancellation;
DELETE FROM reservation WHERE reservation_id =13;
