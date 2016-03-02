SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create view [dbo].[SVC600TV] as select H.CONTNBR,   H.SVC_Contract_Line_SEQ,   COMPDTE=max(H.COMPDTE),   QTYSOLD=sum(L.QTYSOLD)  from SVC00200 H,   SVC00203 L where H.CALLNBR=L.CALLNBR   and L.LINITMTYP = 'L'   and dateadd(Minute,datepart(Minute,H.COMPTME),dateadd(Hour,datepart(Hour,H.COMPTME),H.COMPDTE)) in   (select max(dateadd(Minute,datepart(Minute,A.COMPTME),dateadd(Hour,datepart(Hour,A.COMPTME),A.COMPDTE)))   from SVC00200 A where A.CONTNBR = H.CONTNBR) group by H.CONTNBR, H.SVC_Contract_Line_SEQ    
GO
GRANT SELECT ON  [dbo].[SVC600TV] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC600TV] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC600TV] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC600TV] TO [DYNGRP]
GO
