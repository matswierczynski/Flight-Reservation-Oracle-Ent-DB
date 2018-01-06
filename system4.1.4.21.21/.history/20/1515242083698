 UPDATE XML_AIRPLANE 
 SET XML_DATA = updateXML(XML_DATA,'//airplanes/airplane[BRAND="Fiat" or BRAND="Opel" or BRAND="Ford" or BRAND="Citroen" or BRAND="Renault"]/BRAND/text()', 'Mercedes',
                                  '//airplanes/airplane[BRAND="Fiat" or BRAND="Opel" or BRAND="Ford" or BRAND="Citroen" or BRAND="Renault"]/MODEL/text()', 'CLS',
                                  '//airplanes/airplane[BRAND="Fiat" or BRAND="Opel" or BRAND="Ford" or BRAND="Citroen" or BRAND="Renault"]/SEATSNO/text()', 200);
                                  --przy jednym warunku dziala, przy dwoch i trzech sie wywala