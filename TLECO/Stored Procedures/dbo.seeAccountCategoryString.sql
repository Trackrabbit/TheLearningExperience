SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeAccountCategoryString] @I_iAccountCategory int = NULL  as  set nocount ON  SELECT  GL00102.ACCATDSC FROM  GL00102 WHERE  GL00102.ACCATNUM = @I_iAccountCategory  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeAccountCategoryString] TO [rpt_order processor]
GO
