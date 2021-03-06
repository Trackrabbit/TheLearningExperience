SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00111SI] (@EMPLOYID char(15), @SEQNUMBR int, @RELATIONSHIP smallint, @COMMENTSTR20 char(21), @FRSTNAME char(15), @MIDDLEINITIAL char(1), @LASTNAME char(21), @DEPENDENTSSN char(15), @GENDER smallint, @BRTHDATE datetime, @HOMEPHONE char(21), @WORKPHONE char(21), @EXTENSION char(5), @ADDRESS1 char(61), @ADDRESS2 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @FLTMSTDNTCB tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00111 (EMPLOYID, SEQNUMBR, RELATIONSHIP, COMMENTSTR20, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, GENDER, BRTHDATE, HOMEPHONE, WORKPHONE, EXTENSION, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, FLTMSTDNTCB) VALUES ( @EMPLOYID, @SEQNUMBR, @RELATIONSHIP, @COMMENTSTR20, @FRSTNAME, @MIDDLEINITIAL, @LASTNAME, @DEPENDENTSSN, @GENDER, @BRTHDATE, @HOMEPHONE, @WORKPHONE, @EXTENSION, @ADDRESS1, @ADDRESS2, @CITY, @STATE, @ZIPCODE, @FLTMSTDNTCB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00111SI] TO [DYNGRP]
GO
