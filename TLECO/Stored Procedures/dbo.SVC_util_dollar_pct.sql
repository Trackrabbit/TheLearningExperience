SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_util_dollar_pct] As begin transaction update SVC00906 set Vendor_Parts_Dollar_or_P = 'A' where Vendor_Parts_Dollar_or_P = '$' update SVC00906 set Vendor_Parts_Dollar_or_P = 'P' where Vendor_Parts_Dollar_or_P = '%' update SVC00906 set Vendor_Labor_Dollar_or_P = 'A' where Vendor_Labor_Dollar_or_P = '$' update SVC00906 set Vendor_Labor_Dollar_or_P = 'P' where Vendor_Labor_Dollar_or_P = '%' update SVC00906 set Vendor_Addl_Dollar_or_Pc = 'A' where Vendor_Addl_Dollar_or_Pc = '$' update SVC00906 set Vendor_Addl_Dollar_or_Pc = 'P' where Vendor_Addl_Dollar_or_Pc = '%' update SVC05004 set Dollar_Or_Percent_Reimbu_1 = 'A' where Dollar_Or_Percent_Reimbu_1 = '$' update SVC05004 set Dollar_Or_Percent_Reimbu_1 = 'P' where Dollar_Or_Percent_Reimbu_1 = '%' update SVC05004 set Dollar_Or_Percent_Reimbu_2 = 'A' where Dollar_Or_Percent_Reimbu_2 = '$' update SVC05004 set Dollar_Or_Percent_Reimbu_2 = 'P' where Dollar_Or_Percent_Reimbu_2 = '%' update SVC05004 set Dollar_Or_Percent_Reimbu_3 = 'A' where Dollar_Or_Percent_Reimbu_3 = '$' update SVC05004 set Dollar_Or_Percent_Reimbu_3 = 'P' where Dollar_Or_Percent_Reimbu_3 = '%' update SVC05004 set Dollar_Or_Percent_Reimbu_4 = 'A' where Dollar_Or_Percent_Reimbu_4 = '$' update SVC05004 set Dollar_Or_Percent_Reimbu_4 = 'P' where Dollar_Or_Percent_Reimbu_4 = '%' update SVC00921 set DLRORPCT = 'A' where DLRORPCT = '$' update SVC00921 set DLRORPCT = 'P' where DLRORPCT = '%' commit transaction return     
GO
GRANT EXECUTE ON  [dbo].[SVC_util_dollar_pct] TO [DYNGRP]
GO
