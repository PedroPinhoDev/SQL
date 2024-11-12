/*SELECT nome, data_nascimento
FROM aluno
ORDER BY nome ASC, data_nascimento ASC;
*/

/*SELECT nome, especialidade
FROM professor
ORDER BY nome DESC;
*/

/*SELECT nome, carga_horaria
FROM disciplina
ORDER BY carga_horaria DESC;
*/

/*SELECT status, COUNT(*) AS numero_de_alunos
FROM matricula
GROUP BY status;
*/

/*SELECT c.NOME AS nome_curso, SUM(d.CARGA_HORARIA) AS soma_carga_horaria
FROM curso c
JOIN disciplina d ON c.ID_CURSO = d.ID_CURSO
GROUP BY c.NOME;
*/

/*SELECT p.NOME AS nome_professor, COUNT(t.ID_TURMA) AS numero_turmas
FROM professor p
JOIN turma t ON p.ID_PROFESSOR = t.ID_PROFESSOR
GROUP BY p.NOME
HAVING COUNT(t.ID_TURMA) > 3;
*/

/*SELECT a.NOME AS nome_aluno, COUNT(m.ID_DISCIPLINA) AS numero_disciplinas
FROM aluno a
JOIN matricula m ON a.ID_ALUNO = m.ID_ALUNO
GROUP BY a.NOME
HAVING COUNT(m.ID_DISCIPLINA) > 1
ORDER BY numero_disciplinas DESC;
*/

/*SELECT c.NOME AS nome_curso, SUM(d.CARGA_HORARIA) AS carga_horaria_total
FROM curso c
JOIN disciplina d ON c.ID_CURSO = d.ID_CURSO
GROUP BY c.NOME
HAVING SUM(d.CARGA_HORARIA) > 2000;
*/

/*SELECT p.NOME AS nome_professor, COUNT(t.ID_TURMA) AS numero_turmas
FROM professor p
JOIN turma t ON p.ID_PROFESSOR = t.ID_PROFESSOR
GROUP BY p.NOME
ORDER BY numero_turmas DESC;
*/

/*SELECT c.NOME AS nome_curso, AVG(d.CARGA_HORARIA) AS media_carga_horaria
FROM curso c
JOIN disciplina d ON c.ID_CURSO = d.ID_CURSO
GROUP BY c.NOME;
*/

/*SELECT a.NOME AS nome_aluno, m.STATUS AS status_matricula, m.DATA_MATRICULA
FROM aluno a
JOIN matricula m ON a.ID_ALUNO = m.ID_ALUNO
ORDER BY 
    CASE m.STATUS
        WHEN 'Ativo' THEN 1
        WHEN 'Concluído' THEN 2
        WHEN 'Trancado' THEN 3
        ELSE 4
    END,
    m.DATA_MATRICULA DESC;
*/

/*SELECT a.NOME AS nome_aluno, 
       FLOOR(MONTHS_BETWEEN(SYSDATE, a.DATA_NASCIMENTO) / 12) AS idade
FROM aluno a
ORDER BY idade DESC;
*/

/*SELECT d.NOME AS nome_disciplina, 
       COUNT(m.id_aluno) AS numero_alunos
FROM disciplina d
JOIN matricula m ON m.id_disciplina = d.id_disciplina
GROUP BY d.NOME
ORDER BY numero_alunos DESC;
*/

/*SELECT p.NOME AS nome_professor, 
       d.NOME AS nome_disciplina, 
       t.horario
FROM turma t
JOIN professor p ON t.id_professor = p.id_professor
JOIN disciplina d ON t.id_disciplina = d.id_disciplina
ORDER BY t.horario;
*/

/*SELECT COUNT(*) AS numero_de_disciplinas
FROM disciplina
WHERE carga_horaria > 80;
*/

/*SELECT c.nome AS nome_curso, COUNT(d.id_disciplina) AS quantidade_disciplinas
FROM curso c
JOIN disciplina d ON c.id_curso = d.id_curso
GROUP BY c.nome;
*/

/*SELECT p.nome AS nome_professor
FROM professor p
JOIN turma t ON p.id_professor = t.id_professor
JOIN disciplina d ON t.id_disciplina = d.id_disciplina
WHERE d.carga_horaria > 100
GROUP BY p.nome
HAVING COUNT(d.id_disciplina) > 2;
*/

/*SELECT d.nome AS nome_disciplina
FROM disciplina d
JOIN matricula m ON d.id_disciplina = m.id_disciplina
GROUP BY d.id_disciplina, d.nome
HAVING COUNT(m.id_aluno) >= 5;
*/

/*SELECT m.status AS status_matricula, COUNT(m.id_aluno) AS numero_alunos
FROM matricula m
GROUP BY m.status
ORDER BY numero_alunos DESC;
*/

/*SELECT p.nome AS nome_professor, SUM(d.carga_horaria) AS soma_carga_horaria
FROM professor p
JOIN disciplina d ON p.id_professor = d.id_disciplina
GROUP BY p.nome
ORDER BY soma_carga_horaria DESC;
*/