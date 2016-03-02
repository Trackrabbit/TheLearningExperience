CREATE TABLE [dbo].[gpCustomerException]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gpCustomerException] ADD CONSTRAINT [PKgpCustomerException] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpCustomerException].[CUSTNMBR]'
GO
GRANT SELECT ON  [dbo].[gpCustomerException] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gpCustomerException] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gpCustomerException] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gpCustomerException] TO [DYNGRP]
GO
