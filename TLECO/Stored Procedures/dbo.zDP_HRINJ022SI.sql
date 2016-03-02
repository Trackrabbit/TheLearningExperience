SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRINJ022SI] (@INJURYNUMBER_I char(11), @ISERIALNUMBER_I char(15), @EMPID_I char(15), @CLINICCOSTS_I numeric(19,5), @DOCTORCOSTS_I numeric(19,5), @MEDICATIONCOSTS_I numeric(19,5), @OTHERCOSTS_I numeric(19,5), @TESTCOSTS_I numeric(19,5), @THERAPYCOSTS_I numeric(19,5), @TOTALCOSTS_I numeric(19,5), @CMNTS1_I char(31), @CMNTS2_I char(31), @CMNTS3_I char(31), @CMNTS4_I char(31), @IDATE_I datetime, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRINJ022 (INJURYNUMBER_I, ISERIALNUMBER_I, EMPID_I, CLINICCOSTS_I, DOCTORCOSTS_I, MEDICATIONCOSTS_I, OTHERCOSTS_I, TESTCOSTS_I, THERAPYCOSTS_I, TOTALCOSTS_I, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, IDATE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I) VALUES ( @INJURYNUMBER_I, @ISERIALNUMBER_I, @EMPID_I, @CLINICCOSTS_I, @DOCTORCOSTS_I, @MEDICATIONCOSTS_I, @OTHERCOSTS_I, @TESTCOSTS_I, @THERAPYCOSTS_I, @TOTALCOSTS_I, @CMNTS1_I, @CMNTS2_I, @CMNTS3_I, @CMNTS4_I, @IDATE_I, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRINJ022SI] TO [DYNGRP]
GO
