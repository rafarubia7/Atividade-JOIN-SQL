select * from departamento;
select * from funcionario;
select * from projeto;

-- 1.
select funcionario.nome_funcionario,
departamento.nome_depto from funcionario
inner join departamento on
departamento.sigla_depto = funcionario.sigla_depto;

-- 2. 
select p.nome_projeto,
d.nome_depto from departamento d
inner join projeto p on
d.sigla_depto = p.sigla_depto;

-- 3.
select funcionario.nome_funcionario,
projeto.nome_projeto from projeto 
inner join funcionario on
funcionario.codfuncionario = projeto.codfuncionario;

-- 4.
select funcionario.nome_funcionario, projeto.nome_projeto
from funcionario
left join projeto on
funcionario.codfuncionario = projeto.codfuncionario;


-- 5.
select departamento.nome_depto,
funcionario.nome_funcionario
from funcionario
left join departamento on
departamento.sigla_depto = funcionario.sigla_depto;

-- 6.
select projeto.nome_projeto, 
funcionario.nome_funcionario
from projeto 
left join funcionario on
funcionario.codfuncionario = projeto.codfuncionario;

-- 7.
select funcionario.nome_funcionario, projeto.nome_projeto
from funcionario
right join projeto on
funcionario.codfuncionario = projeto.codfuncionario;

-- 8.
select departamento.nome_depto,
funcionario.nome_funcionario
from funcionario
right join departamento on
departamento.sigla_depto = funcionario.sigla_depto;

-- 9.
select funcionario.nome_funcionario,
projeto.nome_projeto
from projeto 
right join funcionario on
funcionario.codfuncionario = projeto.codfuncionario;

-- 10.
select funcionario.nome_funcionario,
projeto.nome_projeto
from projeto 
right join funcionario on
funcionario.codfuncionario = projeto.codfuncionario

union 

select funcionario.nome_funcionario,
projeto.nome_projeto
from projeto 
left join funcionario on
funcionario.codfuncionario = projeto.codfuncionario;

-- 11.
select departamento.nome_depto,
funcionario.nome_funcionario
from funcionario
right join departamento on
departamento.sigla_depto = funcionario.sigla_depto

union

select departamento.nome_depto,
funcionario.nome_funcionario
from funcionario
left join departamento on
departamento.sigla_depto = funcionario.sigla_depto;