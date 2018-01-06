SET LONG 100000;
SELECT XMLQUERY('for $i in /base/flights/flight
                  where $i/ARRDATE > xs:date("2015-01-01")
                  and $i/ARRDATE < xs:date("2016-01-01")
                    return $i/ID'
                    PASSING XML_DATA RETURNING CONTENT) 
                    FROM XML_DATABASE;