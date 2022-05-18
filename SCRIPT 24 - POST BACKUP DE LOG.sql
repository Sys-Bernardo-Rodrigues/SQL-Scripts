/*ATUALIZANDO OR�AMENTO DO DEPARTAMENTO*/

UPDATE DEPARTAMENTO 
SET ORCAMENTO = 150000.00
WHERE DEPARTID = 4

/*EXECUTANDO BACKUP*/

BACKUP LOG CONSULTABD
TO DISK = N'D:\BACKUPS\LOG\CONSULTABD_BKP_LOG_TSQL.TRN'
WITH
   NOFORMAT,
   NOINIT,
   NAME = N'CONSULTABD - TRANSACTION LOG BACKUP',
   SKIP,
   NOREWIND,
   NOUNLOAD,
   STATS = 10
GO