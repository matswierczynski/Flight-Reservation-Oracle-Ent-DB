SET LONG 10000000;
SELECT XMLQUERY('for $i in /base/payments/payment
                  for $j in /base/airports/airport
                  where $i/ID = $j/COUNTRYID
                    return $i/ID'
                    PASSING XML_DATA RETURNING CONTENT) 
                    FROM XML_DATABASE;
                    -- ~90 seconds
SELECT XMLQUERY('for $i in /base/payments/payment
                 for $j in /base/reservations/reservation
                  where $i/AMOUNTPAID > 6000
                  and $i/ISCARDPAYMENT = 1
                  and $i/ID = $j/PAYMENTID
                    return $i/ID'
                    PASSING XML_DATA RETURNING CONTENT) 
                    FROM XML_DATABASE;
                    -- uknown time
                    