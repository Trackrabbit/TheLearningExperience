SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyIVC] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255) select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '' if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..IVC40100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..IVC40100 ( [SETUPKEY],[DPYITMCS],[ACDSTRBN],[TRKVDTRX],[TRXDTL],[LOCNCODE], [CHEKBKID],[INVCFRMT],[RETNFRMT],[PKSLPFMT],[DECPLQTY],[DECPLCUR], [USEADVTX],[NONIVSCH],[FRTSCHID],[MSCSCHID],[TAXSCHID],[NONIVTXB], [FRGTTXBL],[MISCTXBL],[USRDFPR1],[USRDRPR2],[USEACFRM],[RTNUSIVC], [PKSLPIVC],[COMMNTID],[IVCALLOW_1],[IVCALLOW_2],[IVCALLOW_3],[IVCALLOW_4], [IVCALLOW_5],[IVCALLOW_6],[IVCALLOW_7],[IVCALLOW_8],[IVCALLOW_9],[IVCALLOW_10], [IVCALLOW_11],[IVCPSSWD_1],[IVCPSSWD_2],[IVCPSSWD_3],[IVCPSSWD_4],[IVCPSSWD_5], [IVCPSSWD_6],[IVCPSSWD_7],[IVCPSSWD_8],[IVCPSSWD_9],[IVCPSSWD_10],[IVCPSSWD_11], [IVCSEQNC_1],[IVCSEQNC_2],[IVCSEQNC_3],[IVCSEQNC_4],[IVCSEQNC_5],[IVCSEQNC_6], [IVCSEQNC_7],[IVCSEQNC_8],[IVCSEQNC_9],[IVCSEQNC_10],[IVCSEQNC_11],[IVCDSTCK], [NUMOFTRX] ) select [SETUPKEY],[DPYITMCS],[ACDSTRBN],[TRKVDTRX],[TRXDTL],[LOCNCODE], [CHEKBKID],[INVCFRMT],[RETNFRMT],[PKSLPFMT],[DECPLQTY],[DECPLCUR], [USEADVTX],[NONIVSCH],[FRTSCHID],[MSCSCHID],[TAXSCHID],[NONIVTXB], [FRGTTXBL],[MISCTXBL],[USRDFPR1],[USRDRPR2],[USEACFRM],[RTNUSIVC], [PKSLPIVC],[COMMNTID],[IVCALLOW_1],[IVCALLOW_2],[IVCALLOW_3],[IVCALLOW_4], [IVCALLOW_5],[IVCALLOW_6],[IVCALLOW_7],[IVCALLOW_8],[IVCALLOW_9],[IVCALLOW_10], [IVCALLOW_11],[IVCPSSWD_1],[IVCPSSWD_2],[IVCPSSWD_3],[IVCPSSWD_4],[IVCPSSWD_5], [IVCPSSWD_6],[IVCPSSWD_7],[IVCPSSWD_8],[IVCPSSWD_9],[IVCPSSWD_10],[IVCPSSWD_11], [IVCSEQNC_1],[IVCSEQNC_2],[IVCSEQNC_3],[IVCSEQNC_4],[IVCSEQNC_5],[IVCSEQNC_6], [IVCSEQNC_7],[IVCSEQNC_8],[IVCSEQNC_9],[IVCSEQNC_10],[IVCSEQNC_11],[IVCDSTCK], [NUMOFTRX] from ' + rtrim(@I_vFromCompany) + '..IVC40100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..IVC40101' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..IVC40101 ( [DOCTYPE],[DOCTYABR],[DOCTYNAM],[INVCNMBR],[SETUPKEY] ) select [DOCTYPE],[DOCTYABR],[DOCTYNAM],[INVCNMBR],[SETUPKEY] from ' + rtrim(@I_vFromCompany) + '..IVC40101 ' exec(@cStatement) end return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyIVC] TO [DYNGRP]
GO