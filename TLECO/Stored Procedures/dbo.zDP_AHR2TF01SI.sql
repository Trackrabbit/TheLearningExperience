SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2TF01SI] (@EMPID_I char(15), @TRANSFERREQUESTDAT_I datetime, @DESIREDCOMPANYCODE_I char(7), @DESDIVCODE_I char(7), @DESDEPTCODE_I char(7), @DESPOSCODE_I char(7), @DESSUPCODE_I char(7), @DESLOCCODE_I char(15), @EMPLOYMENTTYPE smallint, @DESIREDSHIFTCODE_I char(7), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2TF01 (EMPID_I, TRANSFERREQUESTDAT_I, DESIREDCOMPANYCODE_I, DESDIVCODE_I, DESDEPTCODE_I, DESPOSCODE_I, DESSUPCODE_I, DESLOCCODE_I, EMPLOYMENTTYPE, DESIREDSHIFTCODE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I) VALUES ( @EMPID_I, @TRANSFERREQUESTDAT_I, @DESIREDCOMPANYCODE_I, @DESDIVCODE_I, @DESDEPTCODE_I, @DESPOSCODE_I, @DESSUPCODE_I, @DESLOCCODE_I, @EMPLOYMENTTYPE, @DESIREDSHIFTCODE_I, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2TF01SI] TO [DYNGRP]
GO
