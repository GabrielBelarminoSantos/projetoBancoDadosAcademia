const dicionario = [
    {
        tabela: "ALUNO",
        campos: [
            {
                nome: "NUMERO_DE_MATRICULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número gerado no momento da matricula do aluno para identifica-lo"
            },
            {
                nome: "CPF",
                tipoDado: "CHAR",
                tamanho: "11",
                restricao: "NOT NULL",
                descricao: "Cadastro de Pessoa Física"
            },
            {
                nome: "Nome",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome de registro do aluno"
            },
            {
                nome: "Email",
                tipoDado: "VARCHAR",
                tamanho: "100",
                restricao: "NULL",
                descricao: "Endereço eletrônico do aluno"
            },
            {
                nome: "Telefone",
                tipoDado: "CHAR",
                tamanho: "15",
                restricao: "NULL",
                descricao: "Número de contato telefonico do aluno"
            }
        ]
    },
    {
        tabela: "HISTORICO_ALUNO",
        campos: [
            {
                nome: "ID_HISTORICO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do histórico do aluno"                
            },
            {
                nome: "PESO",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Peso do aluno em kilo gramas"
            },
            {
                nome: "IDADE",
                tipoDado: "INT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Idade em anos do aluno"
            },
            {
                nome: "SEXO",
                tipoDado: "CHAR",
                tamanho: "1",
                restricao: "NULL",
                descricao: "Sexo do aluno"
            },
            {
                nome: "HISTORICO_MEDICO",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Relatórico médico do aluno contendo histórico de doenças e lesões"
            },
            {
                nome: "PORCENTUAL_DE_GORDURA",
                tipoDado: "NUMERICS",
                tamanho: "(3,1)",
                restricao: "NULL",
                descricao: "Quantidade em porcentagem de massa adiposa do aluno"
            },
            {
                nome: "PORCENTUAL_MASSA_MAGRA",
                tipoDado: "NUMERICS",
                tamanho: "(3,1)",
                restricao: "NULL",
                descricao: "Quantidade em porcentagem de massa muscular do aluno"
            }
        ]
    },
    {
        tabela: "PROFESSOR",
        campos: [
            {
                nome: "CREF",
                tipoDado: "CHAR",
                tamanho: "6",
                restricao: "PK",
                descricao: "Número no registro do Conselho Regional de Educação Física"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome de registro do professor"
            },
            {
                nome: "VALOR_HORA_AULA",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valor cobrado por hora de serviçõ do professor"
            },
            {
                nome: "HORARIO_DE_TRABALHO",
                tipoDado: "TIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Quantidade de horas trabalhadas no dia pelo professor"
            },
            {
                nome: "EMAIL",
                tipoDado: "VARCHAR",
                tamanho: "100",
                restricao: "NULL",
                descricao: "Endereço eletrônico do professor"
            },
            {
                nome: "TELEFONE",
                tipoDado: "CHAR",
                tamanho: "15",
                restricao: "NULL",
                descricao: "Número de contato telefônico do professor"
            }
        ]
    },
    {
        tabela: "FINANCEIRO",
        campos: [
            {
                nome: "ID_HOLERITE",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do holerite gerado"
            },
            {
                nome: "DATA_EMISSÃO",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data em que foi emitido o documento"
            },
            {
                nome: "DATA_REFERÊNCIA",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data do mês de referência do documento"
            },
            {
                nome: "SALÁRIO_BRUTO",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Salário sem aplicação de descontos"
            },
            {
                nome: "SALÁRIO_LÍQUIDO",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Salário após aplicação de descontos"
            },
            {
                nome: "DESCONTOS",
                tipoDado: "NUMERICS",
                tamanho: "",
                restricao: "NULL",
                descricao: "Valor dos descontos aplicados ao salário bruto"
            }
        ]
    },
    {
        tabela: "ESPECIALIDADE",
        campos: [
            {
                nome: "ID_ESPECIALIDADE",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador da especialidade"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome da especialidade"
            }
        ]
    },
    {
        tabela: "TREINO",
        campos: [
            {
                nome: "ID_TREINO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do treino"
            },
            {
                nome: "DATA_INICIO",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data em que o aluno iniciou o treino"
            },
            {
                nome: "DATA_FIM",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data prevista para elaboração de um novo treino"
            },
            {
                nome: "NÚMERO_SÉRIES",
                tipoDado: "INT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Número de blocos de repetições de movimentos"
            },
            {
                nome: "NÚMERO_REPETIÇÕES",
                tipoDado: "INT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Número de vezes que o movimento deve ser repetido"
            }
        ]
    },
    {
        tabela: "EXERCICIOS",
        campos: [
            {
                nome: "ID_EXERCÍCIO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do exercício"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome do exercício"
            },
            {
                nome: "GRUPO_MUSCULAR",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Grupo muscular solicitado para a execução do exercício"
            }
        ]
    },
    {
        tabela: "EQUIPAMENTOS",
        campos: [
            {
                nome: "ID_EQUIPAMENTOS",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do equipamento"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome do equipamento"
            },
            {
                nome: "MODELO",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Versão do equipamento"
            },
            {
                nome: "MARCA",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Empresa que produziu o equipamento"
            }
        ]
    },
    {
        tabela: "EXEMPLAR",
        campos: [
            {
                nome: "ID_EXEMPLAR",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador do exemplar"
            },
            {
                nome: "STATUS",
                tipoDado: "BIT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Indica se o exemplar está funcionando ou não"
            },
            {
                nome: "QUANTIDADE",
                tipoDado: "INT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Quantidade de exemplares que a academia possui"
            }
        ]
    },
    {
        tabela: "PLANOS_DE_MENSALIDADE",
        campos: [
            {
                nome: "NFE",
                tipoDado: "CHAR",
                tamanho: "9",
                restricao: "PK",
                descricao: "Nota Fiscal Eletrônica"
            },
            {
                nome: "DATA_INICIO",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data que o plano foi contratado"
            },
            {
                nome: "DATA_FIM",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data de vencimento do plano contratado"
            },
            {
                nome: "VALOR",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valor pago pelo plano"
            },
            {
                nome: "TIPO",
                tipoDado: "VARCHAR",
                tamanho: "30",
                restricao: "NULL",
                descricao: "Característica do plano"
            },
            {
                nome: "FORMA_DE_PAGAMENTO",
                tipoDado: "VARCHAR",
                tamanho: "20",
                restricao: "NULL",
                descricao: "Meio utilizado para pagar o plano"
            },
            {
                nome: "MULTA_DE_CANCELAMENTO",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valor cobrado para cancelar o plano"
            },
            {
                nome: "TRANCAMENTO",
                tipoDado: "BIT",
                tamanho: "",
                restricao: "NULL",
                descricao: "Indica se o plano está ativo ou temporáriamente inativo"
            }
        ]
    },
    {
        tabela: "NUTRICIONISTA",
        campos: [
            {
                nome: "CRN",
                tipoDado: "CHAR",
                tamanho: "5",
                restricao: "PK",
                descricao: "Número do registo no Conselho Regional de Nutrição"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome do nutricionista"
            },
            {
                nome: "VALOR_DA_CONSULTA",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valor cobrado na consulta"
            },
            {
                nome: "HORARIO_DE_ATENDIMENTO",
                tipoDado: "DATETIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Horario em que são realizadas as consultas"
            },
            {
                nome: "EMAIL",
                tipoDado: "VARCHAR",
                tamanho: "100",
                restricao: "NULL",
                descricao: "Endereço eletrônico do nutricionista"
            },
            {
                nome: "TELEFONE",
                tipoDado: "CHAR",
                tamanho: "15",
                restricao: "NULL",
                descricao: "Telefone de contato do nutricionista"
            }
        ]
    },
    {
        tabela: "DIETA",
        campos: [
            {
                nome: "ID_DIETA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador da dieta"
            },
            {
                nome: "TIPO_DE_ALIMENTO",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Lista com os tipos de alimentos"
            },
            {
                nome: "QUANTIDADE",
                tipoDado: "NUMERICS",
                tamanho: "(3,2)",
                restricao: "NULL",
                descricao: "Qantidade em gramas que devem ser consumidos do alimento"
            },
            {
                nome: "HORARIO",
                tipoDado: "TIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Horário que deve ser consumido o alimento"
            },
            {
                nome: "DATA_INICIO",
                tipoDado: "DATETIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data que se iniciou a dieta"
            },
            {
                nome: "DATA_FIM",
                tipoDado: "DATETIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data prevista para terminar a dieta"
            }
        ]
    },
    {
        tabela: "HORARIO_AULAS",
        campos: [
            {
                nome: "ID_AULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "PK",
                descricao: "Número identificador da aula"
            },
            {
                nome: "NOME",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Nome da aula"
            },
            {
                nome: "HORA_INICIO",
                tipoDado: "TIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Horário de início da aula"
            },
            {
                nome: "HORA_FIM",
                tipoDado: "TIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Horário de término da aula"
            }
        ]
    },
    {
        tabela: "ALUNO_PROFESSOR",
        campos: [
            {
                nome: "NÚMERO_DA_MATRICULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número gerado no momento da matrícula do aluno"
            },
            {
                nome: "CREF",
                tipoDado: "CHAR",
                tamanho: "6",
                restricao: "FK",
                descricao: "Número de registro no Conselho Regional de Educação Física"
            },
            {
                nome: "MODALIDADE",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Tipo de aula que será realizada"
            }
        ]
    },
    {
        tabela: "ALUNO_NUTRICIONISTA",
        campos: [
            {
                nome: "NÚMERO_DE_MATRÍCULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número de identificação gerado no momento da matrícula"
            },
            {
                nome: "CRN",
                tipoDado: "CHAR",
                tamanho: "5",
                restricao: "FK",
                descricao: "Número de registro no Conselho Regional de Nutrição"
            },
            {
                nome: "DATA_CONSULTA",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data para a consulta"
            },
            {
                nome: "DATA_RETORNO",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Data de retorno"
            },
            {
                nome: "ESPECIALIDADE",
                tipoDado: "VARCHAR",
                tamanho: "50",
                restricao: "NULL",
                descricao: "Área de especialização do nutricionista"
            }
        ]
    },
    {
        tabela: "ALUNO_MENSALIDADE",
        campos: [
            {
                nome: "NÚMERO_DE_MATRICULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número gerado no momento da matrícula"
            },
            {
                nome: "NFE",
                tipoDado: "CHAR",
                tamanho: "9",
                restricao: "FK",
                descricao: "Nota Fiscal Eletrônica"
            },
            {
                nome: "DEPENDENTES_DO_PLANO",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Nome de pessoas que podem utilizar o plano como dependentes"
            },
            {
                nome: "MENSALIDADES_ABERTAS",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Mensalidades que ainda não foram pagas"
            },
            {
                nome: "MENSALIDADES_FECHADAS",
                tipoDado: "DATE",
                tamanho: "",
                restricao: "NULL",
                descricao: "Mensalidades que já foram pagas"
            },
            {
                nome: "MODALIDADES_DO_PLANO",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Tipos de atividades que o plano oferece"
            }
        ]
    },
    {
        tabela: "RELACAO_FINANCAS",
        campos: [
            {
                nome: "NFE",
                tipoDado: "CHAR",
                tamanho: "9",
                restricao: "FK",
                descricao: "Nota Fiscal Eletrônica"
            },
            {
                nome: "CREF",
                tipoDado: "CHAR",
                tamanho: "6",
                restricao: "FK",
                descricao: "Número de registro no Conselho Regional de Educação Física"
            },
            {
                nome: "CRN",
                tipoDado: "CHAR",
                tamanho: "5",
                restricao: "FK",
                descricao: "Número de registro no Conselho Regional de Nutrição"
            },
            {
                nome: "DESCONTOS",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valores descontados"
            },
            {
                nome: "JUROS",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valores acrescentados"
            },
            {
                nome: "VALORES",
                tipoDado: "NUMERICS",
                tamanho: "(6,2)",
                restricao: "NULL",
                descricao: "Valores pós descontos e juros"
            },
        ]
    },
    {
        tabela: "AULAS_PROFESSOR",
        campos: [
            {
                nome: "CREF",
                tipoDado: "CHAR",
                tamanho: "6",
                restricao: "FK",
                descricao: "Número de registro no Conselhor Regional de Educação Física"
            },
            {
                nome: "ID_AULA",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número identificador da aula"
            },
            {
                nome: "AULAS_TEMATICAS",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Aulas com temas especiais como páscoa, dia das mulheres e outros"
            },
        ]
    },
    {
        tabela: "TREINO_EXERCICIO",
        campos: [
            {
                nome: "ID_TREINO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número identificador do treino"
            },
            {
                nome: "ID_EXERCICIO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número identificador do exercício"
            },
            {
                nome: "TEMPO_DE_EXECUCAO",
                tipoDado: "TIME",
                tamanho: "",
                restricao: "NULL",
                descricao: "Tempo de execução do treino"
            },
        ]
    },
    {
        tabela: "EXERCICIO_EQUIPAMENTO",
        campos: [
            {
                nome: "ID_EXERCICIO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número identificador do exercício"
            },
            {
                nome: "ID_EQUIPAMENTO",
                tipoDado: "INT",
                tamanho: "",
                restricao: "FK",
                descricao: "Número identificador do equipamento"
            },
            {
                nome: "VARIACAO_EXERCICIO",
                tipoDado: "VARCHAR",
                tamanho: "MAX",
                restricao: "NULL",
                descricao: "Explica uma variação de exercício que pode ser realizado no equipamento"
            },
        ]
    }
]

//Criando variavel container usando o container do html
const container = document.getElementById("container");

//Criando a estrutura da tabela
dicionario.forEach((item) => {
    const titulo = document.createElement("h2");
    titulo.textContent = `Tabela: ${item.tabela}`;
    container.appendChild(titulo);

    const tabela = document.createElement("table");
    tabela.innerHTML = `
    <thead>
        <tr>
            <th>Nome do campo</th>
            <th>Tipo</th>
            <th>Tamanho</th>
            <th>Restrição</th>
            <th>Descrição</th>
        </tr>
    </thead>
    <tbody>
    </tbody>
    `;
    
    //Criando o corpo da tabela
    const tbody = tabela.querySelector("tbody");

    //Percorre os campos das tabelas criadas no começo do código
    item.campos.forEach((campo) => {
        const linha = document.createElement("tr");
        linha.innerHTML = `
        <td>${campo.nome}</td>
        <td>${campo.tipoDado}</td>
        <td>${campo.tamanho}</td>
        <td>${campo.restricao}</td>
        <td>${campo.descricao}</td>
        `;
        tbody.appendChild(linha);
    });
    container.appendChild(tabela);
});