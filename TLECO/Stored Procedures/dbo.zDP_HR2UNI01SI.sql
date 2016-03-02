SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2UNI01SI] (@EMPID_I char(15), @SENIORITYDATE_I datetime, @STRTDATE datetime, @ENDDATE datetime, @UNIONNAME_I char(31), @UNIONDUESAMOUNT_I numeric(19,5), @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @CONTACTNUM_I char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2UNI01 (EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I) VALUES ( @EMPID_I, @SENIORITYDATE_I, @STRTDATE, @ENDDATE, @UNIONNAME_I, @UNIONDUESAMOUNT_I, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I, @CONTACTNUM_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2UNI01SI] TO [DYNGRP]
GO
