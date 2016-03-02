SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReceivablesApply_Open] AS select rtrim(['RM Apply Open File'].[APFRDCNM]) as 'Apply From Document Number', ['RM Apply Open File'].[APFRDCDT] as 'Apply From Document Date', 'Apply From Document Type' = dbo.DYN_FUNC_Document_Type_RM_Trx(['RM Apply Open File'].[APFRDCTY]), 'Apply To Document Type' = dbo.DYN_FUNC_Document_Type_RM_Trx(['RM Apply Open File'].[APTODCTY]), rtrim(['RM Apply Open File'].[APTODCNM]) as 'Apply To Document Number', case ['RM Open File'].[AGNGBUKT] when 1 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 1', case ['RM Open File'].[AGNGBUKT] when 2 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 2', case ['RM Open File'].[AGNGBUKT] when 3 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 3', case ['RM Open File'].[AGNGBUKT] when 4 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 4', case ['RM Open File'].[AGNGBUKT] when 5 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 5', case ['RM Open File'].[AGNGBUKT] when 6 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 6', case ['RM Open File'].[AGNGBUKT] when 7 THEN -['RM Apply Open File'].[APPTOAMT] ELSE 0.00 END as 'Apply Bucket 7'  from RM20201 ['RM Apply Open File'] with (NOLOCK) join RM20101 ['RM Open File'] with (NOLOCK) on   (['RM Apply Open File'].APTODCTY = ['RM Open File'].RMDTYPAL and   ['RM Apply Open File'].APTODCNM = ['RM Open File'].DOCNUMBR)                     
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReceivablesApply_Open] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReceivablesApply_Open] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReceivablesApply_Open] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[ReceivablesApply_Open] TO [rpt_executive]
GO
