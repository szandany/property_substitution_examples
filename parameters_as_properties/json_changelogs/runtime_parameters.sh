#!/bin/bash

# running the first set of properties from defaults file "1st_set.properties"
# printing and confirming values with updateSQL
liquibase --defaultsFile=1st_set.properties updateSQL
liquibase --defaultsFile=1st_set.properties update
# running the second set of properties from defaults file "2st_set.properties"
# printing and confirming values with updateSQL
liquibase --defaultsFile=2st_set.properties updateSQL
liquibase --defaultsFile=2st_set.properties update
# running the a set of runtime parameters as "-Dparameter_name=parameter_value"
# printing and confirming values with updateSQL
liquibase --liquibase.hub.mode=off --url=jdbc:h2:mem:liquibase --changeLogFile=test_variables1.json updateSQL -Dtable.name=myTable3 -DmySpecialValue=CHAR\(10\)
liquibase --liquibase.hub.mode=off --url=jdbc:h2:mem:liquibase --changeLogFile=test_variables1.json update -Dtable.name=myTable3 -DmySpecialValue=CHAR\(10\)
