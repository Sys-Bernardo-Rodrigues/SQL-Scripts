/* CRIANDO FUN��O ESCALAR */
CREATE FUNCTION FN_IDADE_FUNC( @NASCIMENTO DATE) 
RETURNS INT
AS
BEGIN
	DECLARE @IDADE INT

	SELECT @IDADE =  DATEDIFF(YY,@NASCIMENTO,GETDATE())
	FROM FUNCIONARIO

RETURN @IDADE
END
GO

/* CHAMANDO FUN��O ESCALAR DENTRO DA CONSULTA */
SELECT 
	NOME, 
	DATANASCIMENTO, 
	DBO.FN_IDADE_FUNC (DATANASCIMENTO) IDADE 
FROM FUNCIONARIO


/* CRIANDO FUN��O TABLE-VALUED */
CREATE FUNCTION FN_DADOS_FUNC_POR_DEPART (@DEPARTAMENTO VARCHAR(200))
RETURNS TABLE
AS
RETURN
(
			SELECT * FROM VW_DADOS_FUNC
			WHERE DEPARTAMENTO LIKE '%' + @DEPARTAMENTO + '%'
)
GO

/* CHAMANDO FUN��O */
SELECT * FROM FN_DADOS_FUNC_POR_DEPART ('TECNOLOGIA')

SELECT * FROM FN_DADOS_FUNC_POR_DEPART ('PESSOAL')