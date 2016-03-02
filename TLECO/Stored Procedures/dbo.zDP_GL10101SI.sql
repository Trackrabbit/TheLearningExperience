SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10101SI] (@BSNSFMID char(15), @JRNENTRY int, @SQNCLINE numeric(19,5), @ACTINDX int, @TRXAMNT numeric(19,5), @GLLINMSG binary(4), @DSCRIPTN char(31), @GLLINVAL binary(4), @ACCTTYPE smallint, @FXDORVAR smallint, @BALFRCLC smallint, @PSTNGTYP smallint, @DECPLACS smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL10101 (BSNSFMID, JRNENTRY, SQNCLINE, ACTINDX, TRXAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS) VALUES ( @BSNSFMID, @JRNENTRY, @SQNCLINE, @ACTINDX, @TRXAMNT, @GLLINMSG, @DSCRIPTN, @GLLINVAL, @ACCTTYPE, @FXDORVAR, @BALFRCLC, @PSTNGTYP, @DECPLACS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10101SI] TO [DYNGRP]
GO
