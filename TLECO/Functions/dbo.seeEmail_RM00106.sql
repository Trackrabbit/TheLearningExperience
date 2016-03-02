SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[seeEmail_RM00106]   (@Email_Type integer,   @CUSTNMBR char(15))   returns varchar(max)   as  Begin declare @emailString nvarchar(max) set @emailString = ''   SELECT @emailString =   @emailString +  LTRIM(rtrim(ISNULL(Email_Recipient,''))) +  ';'  FROM RM00106  WHERE CUSTNMBR = @CUSTNMBR  AND Email_Type = @Email_Type return @emailString  End    
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeEmail_RM00106] TO [rpt_purchasing manager]
GO
