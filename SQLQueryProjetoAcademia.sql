create database ProjetoAcademia
use ProjetoAcademia

--Resolvendo problemas de conflito entre usuarios do lab da fatec--
ALTER AUTHORIZATION ON DATABASE::ProjetoAcademia TO sa;
GO


--Criando tabela aluno--
create table ALUNO
(
N_de_matricula int not null identity constraint pk_aluno primary key,
CPF char(11) not null,
Data_nascimento date,
Nome varchar(50),
Email varchar(100),
Telefone char(15)
)

--Inserindo dados na tabela--
insert into ALUNO (CPF, Data_nascimento, Nome, Email, Telefone) values ('12345678901', '1990-01-01', 'João Silva', 'joao.silva@hotmail.com', '(11) 99431-4897');
insert into ALUNO (CPF, Data_nascimento, Nome, Email, Telefone) values ('98765432100', '1985-05-15', 'Maria Santos', 'maria.santos@hotmail.com', '(11) 98765-4321');
insert into ALUNO (CPF, Data_nascimento, Nome, Email, Telefone) values ('55566677788', '1992-10-20', 'Carlos Oliveira', 'carlinhos.oli@hotmail.com', '(11) 91234-5678');
insert into ALUNO (CPF, Data_nascimento, Nome, Email, Telefone) values ('11122233344', '1988-03-30', 'Ana Costa', 'aninha.costinha@hotmail.com', '(11) 99876-5432');
insert into ALUNO (CPF, Data_nascimento, Nome, Email, Telefone) values ('99988877766', '1995-07-25', 'Pedro Lima', 'p.lima@hotmail.com', '(11) 98765-4321');


--Criando tabela historico do aluno--
create table HISTORICO_ALUNO
(
ID_HISTORICO int not null identity constraint pk_historico primary key,
Peso numeric(5,2),
Idade int,
Sexo char(1),
Historico_Medico varchar(MAX),
Porcentual_de_Gordura numeric(5,2),
Porcentual_Massa_Magra numeric(5,2)
)

--Inserindo dados na tabela--
insert into HISTORICO_ALUNO (Peso, Idade, Sexo, Historico_Medico, Porcentual_de_Gordura, Porcentual_Massa_Magra) values (80.5, 30, 'M', 'Sem histórico médico relevante', 20.5, 79.5);
insert into HISTORICO_ALUNO (Peso, Idade, Sexo, Historico_Medico, Porcentual_de_Gordura, Porcentual_Massa_Magra) values (65.2, 28, 'F', 'Alergia a amendoim', 25.3, 74.7);
insert into HISTORICO_ALUNO (Peso, Idade, Sexo, Historico_Medico, Porcentual_de_Gordura, Porcentual_Massa_Magra) values (90.8, 35, 'M', 'Hipertensão controlada', 18.7, 81.3);
insert into HISTORICO_ALUNO (Peso, Idade, Sexo, Historico_Medico, Porcentual_de_Gordura, Porcentual_Massa_Magra) values (55.0, 25, 'F', 'Sem histórico médico relevante', 22.1, 77.9);
insert into HISTORICO_ALUNO (Peso, Idade, Sexo, Historico_Medico, Porcentual_de_Gordura, Porcentual_Massa_Magra) values (70.3, 32, 'M', 'Diabetes tipo 2 controlada', 23.8, 76.2);


--Criando tabela professor--
create table PROFESSOR
(
CREF char(11) not null constraint pk_professor primary key,
Nome varchar(50),
Valor_Hora_Aula numeric(6,2),
Horario_de_Entrada datetime,
Horario_de_Saída datetime,
Email varchar(100),
Telefone char(15)
)

--Inserindo dados na tabela--
insert into PROFESSOR (CREF, Nome, Valor_Hora_Aula, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('324685-G/SP', 'Carlos Silva', 50.00, '08:00:00', '17:00:00', 'carlos.s@hotmail.com','(11) 91234-5678');
insert into PROFESSOR (CREF, Nome, Valor_Hora_Aula, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('744685-G/SP', 'Ana Claudia', 60.00, '09:00:00', '18:00:00', 'anac@hotmail.com','(11) 99876-5432');
insert into PROFESSOR (CREF, Nome, Valor_Hora_Aula, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('325985-G/SP', 'Pedro Oliveira', 55.00, '10:00:00', '19:00:00', 'p.oliveira@hotmail.com','(11) 98765-4321');
insert into PROFESSOR (CREF, Nome, Valor_Hora_Aula, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('324775-G/SP', 'Marcia Santos', 65.00, '07:00:00', '16:00:00', 'ma.santos@hotmail.com','(11) 98765-4321');
insert into PROFESSOR (CREF, Nome, Valor_Hora_Aula, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('124685-G/SP', 'Lucas Lima', 52.00, '11:00:00', '20:00:00', 'lulima@hotmail.com','(11) 91234-5678');


--Criando tabela relação aluno professor--
create table ALUNO_PROFESSOR
(
N_de_matricula int not null constraint fk_matricula foreign key (N_de_matricula) references ALUNO(N_de_matricula), 
CREF char(11) not null constraint fk_professor foreign key (CREF) references PROFESSOR(CREF),
Modalidade varchar(50)
)

--Inserindo dados na tabela--
insert into ALUNO_PROFESSOR (N_de_matricula, CREF, Modalidade) values (1, '324685-G/SP', 'Musculação');
insert into ALUNO_PROFESSOR (N_de_matricula, CREF, Modalidade) values (2, '744685-G/SP', 'Yoga');
insert into ALUNO_PROFESSOR (N_de_matricula, CREF, Modalidade) values (3, '325985-G/SP', 'Pilates');
insert into ALUNO_PROFESSOR (N_de_matricula, CREF, Modalidade) values (4, '324775-G/SP', 'Zumba');
insert into ALUNO_PROFESSOR (N_de_matricula, CREF, Modalidade) values (5, '124685-G/SP', 'Crossfit');


--Criando tabela de planos de mensalidade--
create table PLANOS_DE_MENSALIDADE
(
NFE char(9) not null constraint pk_planos_de_mensalidade primary key,
Data_inicio date,
Data_fim date,
Valor numeric(8,2),
Tipo varchar(30),
Forma_de_Pagamento varchar(20),
Multa_de_Cancelamento numeric(8,2),
Trancamento bit
)

--Inserindo dados na tabela--
insert into PLANOS_DE_MENSALIDADE (NFE, Data_inicio, Data_fim, Valor, Tipo, Forma_de_Pagamento, Multa_de_Cancelamento, Trancamento) values ('004565778', '2024-01-01', '2024-02-31', 150.00, 'Mensal', 'Cartão ou dinheiro', 50.00, 0);
insert into PLANOS_DE_MENSALIDADE (NFE, Data_inicio, Data_fim, Valor, Tipo, Forma_de_Pagamento, Multa_de_Cancelamento, Trancamento) values ('004565789', '2024-01-01', '2024-04-31', 400.00, 'Trimestral', 'Cartão ou dinheiro', 100.00, 0);
insert into PLANOS_DE_MENSALIDADE (NFE, Data_inicio, Data_fim, Valor, Tipo, Forma_de_Pagamento, Multa_de_Cancelamento, Trancamento) values ('005865778', '2024-01-01', '2024-07-31', 800.00, 'Semestral', 'Cartão ou dinheiro', 150.00, 0);
insert into PLANOS_DE_MENSALIDADE (NFE, Data_inicio, Data_fim, Valor, Tipo, Forma_de_Pagamento, Multa_de_Cancelamento, Trancamento) values ('104565778', '2024-01-01', '2025-01-31', 1200.00, 'Anual', 'Cartão ou dinheiro', 200.00, 0);
insert into PLANOS_DE_MENSALIDADE (NFE, Data_inicio, Data_fim, Valor, Tipo, Forma_de_Pagamento, Multa_de_Cancelamento, Trancamento) values ('004444778', '2024-01-01', '2024-01-31', 99.00, 'Gym pass', 'Cartão ou dinheiro', 0, 0);


--Criando tabela de relacionamento aluno mensalidade--
create table ALUNO_MENSALIDADE
(
N_de_matricula int not null constraint fk_matricula foreign key (N_de_matricula) references ALUNO(N_de_matricula),
NFE CHAR(9) not null constraint fk_NFE foreign key (NFE) references PLANOS_DE_MENSALIDADE(NFE),
Dependentes_do_plano varchar(MAX),
Mensalidades_abertas date,
Mensalidades_fechadas date,
Modalidades_do_plano varchar(MAX),
Valor numeric(6,2)
)

--Inserindo dados na tabela--
insert into ALUNO_MENSALIDADE (N_de_matricula, NFE, Dependentes_do_plano, Mensalidades_abertas, Mensalidades_fechadas, Modalidades_do_plano, Valor) values (1, '004565778', 'Nenhum', '2024-01-01', '2024-01-31', 'Musculação', 150.00);
insert into ALUNO_MENSALIDADE (N_de_matricula, NFE, Dependentes_do_plano, Mensalidades_abertas, Mensalidades_fechadas, Modalidades_do_plano, Valor) values (2, '004565789', 'Nenhum', '2024-01-01', '2024-04-31', 'Yoga', 400.00);
insert into ALUNO_MENSALIDADE (N_de_matricula, NFE, Dependentes_do_plano, Mensalidades_abertas, Mensalidades_fechadas, Modalidades_do_plano, Valor) values (3, '005865778', 'Nenhum', '2024-01-01', '2024-07-31', 'Pilates', 700.00);
insert into ALUNO_MENSALIDADE (N_de_matricula, NFE, Dependentes_do_plano, Mensalidades_abertas, Mensalidades_fechadas, Modalidades_do_plano, Valor) values (4, '104565778', 'Nenhum', '2024-01-01', '2025-01-31', 'Zumba', 1200.00);
insert into ALUNO_MENSALIDADE (N_de_matricula, NFE, Dependentes_do_plano, Mensalidades_abertas, Mensalidades_fechadas, Modalidades_do_plano, Valor) values (5, '004444778', 'Nenhum', '2024-01-01', '2024-01-31', 'Crossfit', 150.00);


--Criando tabela nutricionista--
create table NUTRICIONISTA
(
 CRN char(6) not null constraint pk_nutricionista primary key,
Nome varchar(50),
Valor_da_Consulta numeric(5,2),
Horario_de_Entrada datetime,
Horario_de_Saída datetime,
Email varchar(30),
Telefone char(15)
)

--Inserindo dados na tabela--
insert into NUTRICIONISTA (CRN, Nome, Valor_da_Consulta, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('172345', 'Marta Silva', 100.00, '08:00:00', '17:00:00', 'martass@hotmail.com', '(11) 99412-4544');
insert into NUTRICIONISTA (CRN, Nome, Valor_da_Consulta, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('548321', 'João Oliveira', 120.00, '09:00:00', '18:00:00', 'joliveira@hotmail.com', '(11) 97845-1010');
insert into NUTRICIONISTA (CRN, Nome, Valor_da_Consulta, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('679890', 'Ana Carolina Germano', 110.00, '10:00:00', '19:00:00', 'ana.cage@hotmail.com', '(11) 98765-4321');
insert into NUTRICIONISTA (CRN, Nome, Valor_da_Consulta, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('987465', 'Pedro Paes', 90.00, '07:00:00', '16:00:00', 'ppaes@hotmail.com', '(11) 91234-5678');
insert into NUTRICIONISTA (CRN, Nome, Valor_da_Consulta, Horario_de_Entrada, Horario_de_Saída, Email, Telefone) values ('135729', 'Luciana Lima', 95.00, '11:00:00', '20:00:00', 'luci.lima@hotmail.com', '(11) 99876-5432');


--Criando tabela de relacionamento aluno nutricionista--
create table ALUNO_NUTRI
(
N_de_matricula int not null constraint fk_aluno foreign key (N_de_matricula) references ALUNO(N_de_matricula),
CRN char(6) not null constraint fk_nutricionista foreign key (CRN) references NUTRICIONISTA(CRN),
Data_da_consulta datetime,
Data_de_retorno datetime,
Especialidade varchar(50) 
)

--Inserindo dados na tabela--
insert into ALUNO_NUTRI (N_de_matricula, CRN, Data_da_consulta, Data_de_retorno, Especialidade) values (1, '172345', '2026-01-15', '2026-02-15', 'Nutrição Esportiva');
insert into ALUNO_NUTRI (N_de_matricula, CRN, Data_da_consulta, Data_de_retorno, Especialidade) values (2, '548321', '2026-01-20', '2026-02-20', 'Nutrição Clínica');
insert into ALUNO_NUTRI (N_de_matricula, CRN, Data_da_consulta, Data_de_retorno, Especialidade) values (3, '679890', '2026-01-25', '2026-02-25', 'Nutrição para Emagrecimento');
insert into ALUNO_NUTRI (N_de_matricula, CRN, Data_da_consulta, Data_de_retorno, Especialidade) values (4, '987465', '2026-01-30', '2026-02-29', 'Nutrição para Emagrecimento');
insert into ALUNO_NUTRI (N_de_matricula, CRN, Data_da_consulta, Data_de_retorno, Especialidade) values (5, '135729', '2026-02-05', '2026-03-05', 'Nutrição para Hipertrofia');


--Criando tabela dieta--
create table DIETA
(
ID_DIETA int not null identity constraint pk_dieta primary key,
Lista_de_Alimentos varchar(MAX),
Horario datetime,
Data_inicio date,
Data_fim date
)

--Inserindo dados na tabela--
insert into DIETA (Lista_de_Alimentos, Horario, Data_inicio, Data_fim) values ('Frango grelhado, Arroz integral, Brócolis', '12:00:00', '2026-01-01', '2026-01-31');
insert into DIETA (Lista_de_Alimentos, Horario, Data_inicio, Data_fim) values ('Peixe assado, Batata doce, Aspargos', '19:00:00', '2026-01-01', '2026-01-31');
insert into DIETA (Lista_de_Alimentos, Horario, Data_inicio, Data_fim) values ('Ovos mexidos, Aveia, Frutas', '08:00:00', '2026-01-01', '2026-01-31');
insert into DIETA (Lista_de_Alimentos, Horario, Data_inicio, Data_fim) values ('Salada de quinoa, Grão-de-bico, Legumes', '13:00:00', '2026-01-01', '2026-01-31');
insert into DIETA (Lista_de_Alimentos, Horario, Data_inicio, Data_fim) values ('Smoothie de proteínas, Frutas vermelhas, Sementes', '16:00:00', '2026-01-01', '2026-01-31');


--Criando tabela de relacionamento de finanças--
create table RELACAO_FINANCAS
(
NFE char(9) not null constraint fk_NFE foreign key (NFE) references PLANOS_DE_MENSALIDADE(NFE),
CREF char(11) not null constraint fk_professor foreign key (CREF) references PROFESSOR(CREF),
CRN char(6) not null constraint fk_nutricionista foreign key (CRN) references NUTRICIONISTA(CRN),
Descontos numeric(6,2),
Juros numeric(6,2),
Valores numeric(6,2)
)

--Inserindo dados na tabela--
insert into RELACAO_FINANCAS (NFE, CREF, CRN, Descontos, Juros, Valores) values ('004565778', '324685-G/SP', '172345', 10.00, 5.00, 135.00);
insert into RELACAO_FINANCAS (NFE, CREF, CRN, Descontos, Juros, Valores) values ('004565789', '744685-G/SP', '548321', 20.00, 10.00, 370.00);
insert into RELACAO_FINANCAS (NFE, CREF, CRN, Descontos, Juros, Valores) values ('005865778', '325985-G/SP', '679890', 30.00, 15.00, 655.00);
insert into RELACAO_FINANCAS (NFE, CREF, CRN, Descontos, Juros, Valores) values ('104565778', '324775-G/SP', '987465', 40.00, 20.00, 1160.00);
insert into RELACAO_FINANCAS (NFE, CREF, CRN, Descontos, Juros, Valores) values ('004444778', '124685-G/SP', '135729', 10.00, 5.00, 135.00);


--Criando tabela financeiro--
create table FINANCEIRO
(
ID_HOLERITE int not null identity constraint pk_holerite primary key,
Data_Emissão datetime,
Data_Referência datetime,
Salario_Bruto numeric(6,2),
Salario_Liquido numeric(6,2),
Descontos numeric(6,2)
)

--Inserindo dados na tabela--
insert into FINANCEIRO (Data_Emissão, Data_Referência, Salario_Bruto, Salario_Liquido, Descontos) values ('2026-01-31', '2026-01-01', 3000.00, 2700.00, 300.00);
insert into FINANCEIRO (Data_Emissão, Data_Referência, Salario_Bruto, Salario_Liquido, Descontos) values ('2026-01-31', '2026-01-01', 3200.00, 2880.00, 320.00);
insert into FINANCEIRO (Data_Emissão, Data_Referência, Salario_Bruto, Salario_Liquido, Descontos) values ('2026-01-31', '2026-01-01', 3500.00, 3150.00, 350.00);
insert into FINANCEIRO (Data_Emissão, Data_Referência, Salario_Bruto, Salario_Liquido, Descontos) values ('2026-01-31', '2026-01-01', 2800.00, 2520.00, 280.00);
insert into FINANCEIRO (Data_Emissão, Data_Referência, Salario_Bruto, Salario_Liquido, Descontos) values ('2026-01-31', '2026-01-01', 3100.00, 2790.00, 310.00);


--Criando tabela especialidade--
create table ESPECIALIDADE
(
ID_ESPECIALIDADE int not null identity constraint pk_especialidade primary key,
NOME varchar(50)
)

--Inserindo dados na tabela--
insert into ESPECIALIDADE (NOME) values ('Musculação');
insert into ESPECIALIDADE (NOME) values ('Yoga');
insert into ESPECIALIDADE (NOME) values ('Pilates');
insert into ESPECIALIDADE (NOME) values ('Zumba');
insert into ESPECIALIDADE (NOME) values ('Crossfit');


--Criando tabela horario das aulas--
create table HORARIOS_AULAS
(	
ID_AULA int not null identity constraint pk_horarioAulas primary key,
Nome varchar(50),
Hora_Inicio datetime,
Hora_Fim datetime
)

--Inserindo dados na tabela--
insert into HORARIOS_AULAS (Nome, Hora_Inicio, Hora_Fim) values ('Musculação', '08:00:00', '09:00:00');
insert into HORARIOS_AULAS (Nome, Hora_Inicio, Hora_Fim) values ('Yoga', '09:00:00', '10:00:00');
insert into HORARIOS_AULAS (Nome, Hora_Inicio, Hora_Fim) values ('Pilates', '10:00:00', '11:00:00');
insert into HORARIOS_AULAS (Nome, Hora_Inicio, Hora_Fim) values ('Zumba', '11:00:00', '12:00:00');
insert into HORARIOS_AULAS (Nome, Hora_Inicio, Hora_Fim) values ('Crossfit', '12:00:00', '13:00:00');


--Criando tabela de relacionamento aula professor--
create table AULAS_PROFESSOR
(	
CREF char(11) not null constraint fk_professor foreign key (CREF) references PROFESSOR(CREF),
ID_AULA int not null constraint fk_horarioAulas foreign key (ID_AULA) references HORARIOS_AULAS(ID_AULA),
AULAS_TEMATICAS varchar(MAX)
)

--Inserindo dados na tabela--
insert into AULAS_PROFESSOR (CREF, ID_AULA, AULAS_TEMATICAS) values ('324685-G/SP', 1, 'Treino de Força');
insert into AULAS_PROFESSOR (CREF, ID_AULA, AULAS_TEMATICAS) values ('744685-G/SP', 2, 'Yoga para Iniciantes');
insert into AULAS_PROFESSOR (CREF, ID_AULA, AULAS_TEMATICAS) values ('325985-G/SP', 3, 'Pilates para Flexibilidade');
insert into AULAS_PROFESSOR (CREF, ID_AULA, AULAS_TEMATICAS) values ('324775-G/SP', 4, 'Zumba para Emagrecimento');
insert into AULAS_PROFESSOR (CREF, ID_AULA, AULAS_TEMATICAS) values ('124685-G/SP', 5, 'Crossfit para Condicionamento Físico');


--Criando tabela treino--
create table TREINO
(
ID_TREINO int not null identity constraint pk_treino primary key,
Data_Inicio date,
Data_Fim date,
N_Séries int,
N_Repetiçoes int
)

--Inserindo dados na tabela--
insert into TREINO (Data_Inicio, Data_Fim, N_Séries, N_Repetiçoes) values ('2026-01-01', '2026-01-31', 3, 12);
insert into TREINO (Data_Inicio, Data_Fim, N_Séries, N_Repetiçoes) values ('2026-02-01', '2026-02-28', 4, 10);
insert into TREINO (Data_Inicio, Data_Fim, N_Séries, N_Repetiçoes) values ('2026-03-01', '2026-03-31', 5, 8);
insert into TREINO (Data_Inicio, Data_Fim, N_Séries, N_Repetiçoes) values ('2026-04-01', '2026-04-30', 3, 15);
insert into TREINO (Data_Inicio, Data_Fim, N_Séries, N_Repetiçoes) values ('2026-05-01', '2026-05-31', 4, 12);


--Criando tabela exercicios--
create table EXERCICIOS
(
ID_EXERCICIOS int not null identity constraint pk_exercicios primary key,
NOME varchar(50),
GRUPO_MUSCULAR varchar(50)
)

--Inserindo dados na tabela--
insert into EXERCICIOS (NOME, GRUPO_MUSCULAR) values ('Supino Reto', 'Peito');
insert into EXERCICIOS (NOME, GRUPO_MUSCULAR) values ('Agachamento', 'Pernas');
insert into EXERCICIOS (NOME, GRUPO_MUSCULAR) values ('Puxada Frontal', 'Costas');
insert into EXERCICIOS (NOME, GRUPO_MUSCULAR) values ('Desenvolvimento de Ombros', 'Ombros');
insert into EXERCICIOS (NOME, GRUPO_MUSCULAR) values ('Rosca Direta', 'Bíceps');


--Criando tabela de relacionamento treino exercicio--
create table TREINO_EXERCICIOS
(
ID_TREINO int not null constraint fk_treino foreign key (ID_TREINO) references TREINO(ID_TREINO),
ID_EXERCICIOS int not null constraint fk_exercicios foreign key (ID_EXERCICIOS) references EXERCICIOS(ID_EXERCICIOS),
TEMPO_DE_EXECUÇÃO time
)

--Inserindo dados na tabela--
insert into TREINO_EXERCICIOS (ID_TREINO, ID_EXERCICIOS, TEMPO_DE_EXECUÇÃO) values (1, 1, '01:00:00');
insert into TREINO_EXERCICIOS (ID_TREINO, ID_EXERCICIOS, TEMPO_DE_EXECUÇÃO) values (1, 2, '00:45:00');
insert into TREINO_EXERCICIOS (ID_TREINO, ID_EXERCICIOS, TEMPO_DE_EXECUÇÃO) values (2, 3, '00:40:00');
insert into TREINO_EXERCICIOS (ID_TREINO, ID_EXERCICIOS, TEMPO_DE_EXECUÇÃO) values (2, 4, '00:55:00');
insert into TREINO_EXERCICIOS (ID_TREINO, ID_EXERCICIOS, TEMPO_DE_EXECUÇÃO) values (3, 5, '00:45:00');


--Criando tabela equipamentos--
create table EQUIPAMENTOS
(
ID_EQUIPAMENTOS int not null identity constraint pk_equipamentos primary key,
Nome varchar(50),   
Modelo varchar(50),
Marca varchar(50),
Quantidade int
)

--Inserindo dados na tabela--
insert into EQUIPAMENTOS (Nome, Modelo, Marca, Quantidade) values ('Esteira', 'X1000', 'FitTech', 5);
insert into EQUIPAMENTOS (Nome, Modelo, Marca, Quantidade) values ('Bicicleta Ergométrica', 'B200', 'HealthPro', 3);
insert into EQUIPAMENTOS (Nome, Modelo, Marca, Quantidade) values ('Leg Press', 'L300', 'StrongFit', 4);
insert into EQUIPAMENTOS (Nome, Modelo, Marca, Quantidade) values ('Supino Inclinado', 'S400', 'PowerGym', 2);
insert into EQUIPAMENTOS (Nome, Modelo, Marca, Quantidade) values ('Puxador Costas', 'P500', 'MuscleMax', 3);


--Criando tabela de relacionamento exercicio equipamento--
create table EXERCICIOS_EQUIP
(
ID_EXERCICIOS int not null constraint fk_exercicios foreign key (ID_EXERCICIOS) references EXERCICIOS(ID_EXERCICIOS),
ID_EQUIPAMENTOS int not null constraint fk_equipamentos foreign key (ID_EQUIPAMENTOS) references EQUIPAMENTOS(ID_EQUIPAMENTOS),
VARIACAO_DE_EXERCICIOS varchar(MAX)
)

--Inserindo dados na tabela--
insert into EXERCICIOS_EQUIP (ID_EXERCICIOS, ID_EQUIPAMENTOS, VARIACAO_DE_EXERCICIOS) values (1, 1, 'Supino Reto com Halteres');
insert into EXERCICIOS_EQUIP (ID_EXERCICIOS, ID_EQUIPAMENTOS, VARIACAO_DE_EXERCICIOS) values (2, 3, 'Agachamento com Barra');
insert into EXERCICIOS_EQUIP (ID_EXERCICIOS, ID_EQUIPAMENTOS, VARIACAO_DE_EXERCICIOS) values (3, 5, 'Puxada Frontal com Pegada Fechada');
insert into EXERCICIOS_EQUIP (ID_EXERCICIOS, ID_EQUIPAMENTOS, VARIACAO_DE_EXERCICIOS) values (4, 4, 'Desenvolvimento de Ombros com Halteres');
insert into EXERCICIOS_EQUIP (ID_EXERCICIOS, ID_EQUIPAMENTOS, VARIACAO_DE_EXERCICIOS) values (5, 2, 'Rosca Direta com Barra');


--Criando tabela exemplar do equipamento--
create table EXEMPLAR_EQUIP
(
ID_EXEMPLAR int not null identity constraint pk_exemplar_equip primary key,
STATUS_EQUIPAMENTO bit
)

--Inserindo dados na tabela--
insert into EXEMPLAR_EQUIP (STATUS_EQUIPAMENTO) values (1);
insert into EXEMPLAR_EQUIP (STATUS_EQUIPAMENTO) values (0);
insert into EXEMPLAR_EQUIP (STATUS_EQUIPAMENTO) values (1);
insert into EXEMPLAR_EQUIP (STATUS_EQUIPAMENTO) values (1);
insert into EXEMPLAR_EQUIP (STATUS_EQUIPAMENTO) values (0);


--Criando update unico--
--update NUTRICIONISTA set Valor_da_Consulta = 105.00 where CRN = '679890';--

--Criando update multiplo--
--update PROFESSOR set Valor_Hora_Aula = 70.00 where Valor_Hora_Aula < 65.00;--

--Criando delete unico--
--delete from EQUIPAMENTOS where ID_EQUIPAMENTOS = 5;--

--Criando delete multiplo--
--delete from DIETA where Data_fim < '2026-01-31';--