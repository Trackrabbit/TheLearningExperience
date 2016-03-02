SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1004SI] (@CMPANYID smallint, @NC_Source_Company_ID smallint, @NC_Src_Account_Index int, @NC_Src_IC_Account_Index int, @NC_Dest_Account_Index int, @NC_Dest_IC_Account_Index int, @NC_Trigger_Account_Index int, @JRNENTRY int, @SQNCLINE numeric(19,5), @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @XCHGRATE numeric(19,7), @DSCRIPTN char(31), @GLLINMSG binary(4), @GLLINMS2 binary(4), @CURRNIDX smallint, @DECPLACS smallint, @ORCTRNUM char(21), @ORDOCNUM char(21), @ORMSTRID char(31), @ORMSTRNM char(65), @ORTRXTYP smallint, @OrigSeqNum int, @OrigDTASeries smallint, @SEQNUMBR int, @DTA_GL_Status smallint, @DTAREF char(25), @DTA_Index numeric(19,5), @RATETPID char(15), @EXGTBLID char(15), @EXCHDATE datetime, @TIME1 datetime, @RTCLCMTD smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @NC_Src_Batch_Created tinyint, @NC_Dest_Batch_Created smallint, @NC_Copy_MDA_CB tinyint, @NC_Reverse_MDA_CB tinyint, @MKDTOPST tinyint, @SOURCDOC char(11), @USERID char(15), @TRXDATE datetime, @CURRVAL numeric(19,5), @DATE1 datetime, @String1 char(31), @STRGA255 char(255), @IntegerValue smallint, @NC_Source_Currency_Index smallint, @SERIES smallint, @Remote_Company_ID char(5), @Remote_Destination_Accou char(129), @Remote_Destination_IC_Ac char(129), @MCSTRUCT_1 char(15), @MCSTRUCT_2 smallint, @MCSTRUCT_3 char(15), @MCSTRUCT_4 char(15), @MCSTRUCT_5 numeric(19,7), @MCSTRUCT_6 datetime, @MCSTRUCT_7 smallint, @MCSTRUCT_8 datetime, @MCSTRUCT_9 smallint, @MCSTRUCT_10 smallint, @MCSTRUCT_11 smallint, @MCSTRUCT_12 datetime, @MCSTRUCT_13 numeric(19,7), @MCSTRUCT_14 smallint, @ORTRXDESC char(31), @NC_Spare_Int smallint, @NC_Bank_Currency_ID char(15), @NC_FunctionalOriginating smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC1004 (CMPANYID, NC_Source_Company_ID, NC_Src_Account_Index, NC_Src_IC_Account_Index, NC_Dest_Account_Index, NC_Dest_IC_Account_Index, NC_Trigger_Account_Index, JRNENTRY, SQNCLINE, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, OrigDTASeries, SEQNUMBR, DTA_GL_Status, DTAREF, DTA_Index, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, NC_Src_Batch_Created, NC_Dest_Batch_Created, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, MKDTOPST, SOURCDOC, USERID, TRXDATE, CURRVAL, DATE1, String1, STRGA255, IntegerValue, NC_Source_Currency_Index, SERIES, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, MCSTRUCT_1, MCSTRUCT_2, MCSTRUCT_3, MCSTRUCT_4, MCSTRUCT_5, MCSTRUCT_6, MCSTRUCT_7, MCSTRUCT_8, MCSTRUCT_9, MCSTRUCT_10, MCSTRUCT_11, MCSTRUCT_12, MCSTRUCT_13, MCSTRUCT_14, ORTRXDESC, NC_Spare_Int, NC_Bank_Currency_ID, NC_FunctionalOriginating) VALUES ( @CMPANYID, @NC_Source_Company_ID, @NC_Src_Account_Index, @NC_Src_IC_Account_Index, @NC_Dest_Account_Index, @NC_Dest_IC_Account_Index, @NC_Trigger_Account_Index, @JRNENTRY, @SQNCLINE, @ACTINDX, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @XCHGRATE, @DSCRIPTN, @GLLINMSG, @GLLINMS2, @CURRNIDX, @DECPLACS, @ORCTRNUM, @ORDOCNUM, @ORMSTRID, @ORMSTRNM, @ORTRXTYP, @OrigSeqNum, @OrigDTASeries, @SEQNUMBR, @DTA_GL_Status, @DTAREF, @DTA_Index, @RATETPID, @EXGTBLID, @EXCHDATE, @TIME1, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @NC_Src_Batch_Created, @NC_Dest_Batch_Created, @NC_Copy_MDA_CB, @NC_Reverse_MDA_CB, @MKDTOPST, @SOURCDOC, @USERID, @TRXDATE, @CURRVAL, @DATE1, @String1, @STRGA255, @IntegerValue, @NC_Source_Currency_Index, @SERIES, @Remote_Company_ID, @Remote_Destination_Accou, @Remote_Destination_IC_Ac, @MCSTRUCT_1, @MCSTRUCT_2, @MCSTRUCT_3, @MCSTRUCT_4, @MCSTRUCT_5, @MCSTRUCT_6, @MCSTRUCT_7, @MCSTRUCT_8, @MCSTRUCT_9, @MCSTRUCT_10, @MCSTRUCT_11, @MCSTRUCT_12, @MCSTRUCT_13, @MCSTRUCT_14, @ORTRXDESC, @NC_Spare_Int, @NC_Bank_Currency_ID, @NC_FunctionalOriginating) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1004SI] TO [DYNGRP]
GO