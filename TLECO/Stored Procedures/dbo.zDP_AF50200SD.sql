SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50200SD] (@USERID char(15), @PRCSSQNC smallint, @REPORTID smallint, @SUBSUDID char(15), @STTACCT_1 char(9), @STTACCT_2 char(9), @STTACCT_3 char(9), @STTACCT_4 char(9), @STTACCT_5 char(9), @ENDACCT_1 char(9), @ENDACCT_2 char(9), @ENDACCT_3 char(9), @ENDACCT_4 char(9), @ENDACCT_5 char(9), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AF50200 WHERE USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND SUBSUDID = @SUBSUDID AND STTACCT_1 = @STTACCT_1 AND STTACCT_2 = @STTACCT_2 AND STTACCT_3 = @STTACCT_3 AND STTACCT_4 = @STTACCT_4 AND STTACCT_5 = @STTACCT_5 AND ENDACCT_1 = @ENDACCT_1 AND ENDACCT_2 = @ENDACCT_2 AND ENDACCT_3 = @ENDACCT_3 AND ENDACCT_4 = @ENDACCT_4 AND ENDACCT_5 = @ENDACCT_5 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AF50200 WHERE USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND SUBSUDID = @SUBSUDID AND STTACCT_1 = @STTACCT_1 AND STTACCT_2 = @STTACCT_2 AND STTACCT_3 = @STTACCT_3 AND STTACCT_4 = @STTACCT_4 AND STTACCT_5 = @STTACCT_5 AND ENDACCT_1 = @ENDACCT_1 AND ENDACCT_2 = @ENDACCT_2 AND ENDACCT_3 = @ENDACCT_3 AND ENDACCT_4 = @ENDACCT_4 AND ENDACCT_5 = @ENDACCT_5 SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50200SD] TO [DYNGRP]
GO