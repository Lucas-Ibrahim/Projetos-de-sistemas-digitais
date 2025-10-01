# Projetos-de-sistemas-digitais

# 🧮 Projeto Final – ALU (Arithmetic Logic Unit)

Projeto de uma ULA (Unidade Lógica e Aritmética) em VHDL para realizar operações aritméticas e lógicas de 4 bits.

## 📖 Funcionalidades
- **000 – NOP** → Resultado = 0000, todas as saídas zeradas  
- **001 – AND** → a AND b  
- **010 – OR** → a OR b  
- **011 – NOT** → NOT b  
- **100 – ADD** → a + b (ripple carry de 4 bits)  
- **101 – SUB** → a - b (ripple carry de 4 bits)  
- **110 – MUL** → a1a0 × b1b0 (multiplicação de 2 bits, resultado em 4 bits)  
- **111 – COMP** → Comparador de 4 bits: Equ, Grt, Lst  

## 📂 Estrutura
- Somador completo  
- Somador de 4 bits  
- Multiplicador de 2 bits  
- Comparador de 4 bits  

## 🔧 Sinais de Saída
- **Zero** → 1 quando Result = 0000  
- **Overflow** → 1 em caso de overflow em ADD ou SUB  
- **CarryOut** → carry-out em ADD ou SUB  
- **Equ, Grt, Lst** → resultado da comparação  

## 🎛️ Mapeamento na Placa
- `a → SW10–SW7`  
- `b → SW6–SW3`  
- `AluOp → SW2–SW0`  
- `HEX0 ← AluOp`  
- `HEX2 ← b`  
- `HEX4 ← a`  
- `HEX6 ← result`  
- `LEDR0 ← cout`  
- `LEDR1 ← zero`  
- `LEDR2 ← overflow`  
- `LEDR3 ← Equ`  
- `LEDR4 ← Grt`  
- `LEDR5 ← Lst`  

## 📂 Entrega
- Arquivos `.vhd`  
- Prints das simulações (ModelSim)  
- Vídeo do funcionamento na placa

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab01 – Tutorial Quartus

Primeiro contato com o **Quartus Prime** e o **ModelSim**, explorando criação de projetos, simulação e escrita do primeiro código VHDL.

## 📖 Objetivo
- Criar um projeto no Quartus.  
- Editar um circuito lógico simples (chave-hotel: dois interruptores controlam uma mesma lâmpada).  
- Simular o circuito usando o ModelSim.  
- Escrever o primeiro código em VHDL.

## 🛠️ Tecnologias
- Quartus Prime  
- ModelSim  
- Linguagem VHDL

## 📂 Entrega
- Arquivo `light.vhd`  
- Screenshot da simulação

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab02 – Funções Lógicas com XOR/XNOR

Exploração de equivalência de funções lógicas com diferentes implementações.

## 📖 Objetivo
- Reescrever a função `f(x1, x2) = (x1.x2 + x1’.x2’) + (x1.x2’ + x1’.x2)` usando XOR/XNOR.  
- Editar circuitos no **Editor Esquemático**.  
- Simular e verificar tabelas-verdade.  
- Implementar em VHDL.

## 📂 Entrega
- Arquivos `.bdf`, `.vhd`, `.do`  
- Screenshot das simulações (`lab2_1.pdf`, `lab2_2.pdf`)

 --------------------------------------------------------------------------------------------------------------------------------------------------

  # 🧪 Lab03 – Uso da Placa e Testbench

Familiarização com a placa **DE2-115** e simulação de circuitos usando testbench.

## 📖 Objetivo
- Criar e configurar projeto no Quartus.  
- Mapear entradas/saídas da FPGA.  
- Implementar `lab03.vhd` e `lab03_tb.vhd`.  
- Simular o circuito e validar comportamento.

## 📂 Entrega
- Arquivos `lab03.vhd` e `lab03_tb.vhd`  
- Print da simulação no ModelSim

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab04 – Full Adder

Projeto de um somador completo de 1 bit.

## 📖 Objetivo
- Implementar full adder em VHDL.  
- Entradas: `SW0`, `SW1`, `SW2` (carry-in).  
- Saídas: `LEDR0` (soma), `LEDR1` (carry-out).  
- Criar tabela verdade, funções booleanas e simular.

## 📂 Entrega
- Arquivos VHDL (projeto + simulação)  
- Print das simulações  
- Vídeo do funcionamento na placa

--------------------------------------------------------------------------------------------------------------------------------------------------

  # 🧪 Lab06 – Full Adder com Displays 7 Seg

Síntese e gravação na placa DE2-115.

## 📖 Objetivo
- Somar 2 números de 1 bit + carry-in.  
- Entradas: `SW0`, `SW1`, `SW2`.  
- Saídas exibidas em **displays de 7 segmentos**:
  - `HEX7 <- SW0`  
  - `HEX5 <- SW1`  
  - `HEX3 <- SW2`  
  - `HEX1 <- soma`

## 📂 Entrega
- Arquivos `.vhd`  
- Print da simulação  
- Vídeo de funcionamento

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab07 – Ripple Carry Adder (4 bits)

Somador de 4 bits usando 4 full adders em série.

## 📖 Objetivo
- Entradas: `SW8–SW5` (a), `SW4–SW1` (b), `SW0` (cin).  
- Saídas em **7 segmentos**:
  - `HEX7 <- cout`  
  - `HEX5 <- soma`  
  - `HEX3 <- a`  
  - `HEX1 <- b`  
  - `HEX0 <- cin`

## 📂 Entrega
- Arquivos `.vhd`  
- Print da simulação  
- Vídeo de funcionamento

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab08 – Multiplicador 2x2

Multiplicação de dois números de 2 bits usando ANDs e full adders.

## 📖 Objetivo
- Entradas:  
  - `SW3–SW2` → m  
  - `SW1–SW0` → q  
- Saídas:  
  - `HEX7 <- prod`  
  - `HEX5 <- a`  
  - `HEX3 <- b`

## 📂 Entrega
- Arquivos `.vhd` (somadores + pacote)  
- Print da simulação  
- Vídeo de funcionamento

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab09 – Comparador de 4 bits

Circuito para comparar dois números de 4 bits.

## 📖 Objetivo
- Entradas:  
  - `a -> SW10–SW7`  
  - `b -> SW6–SW3`  
- Saídas:  
  - `LEDR(3)` → Equ (a = b)  
  - `LEDR(4)` → Grt (a > b)  
  - `LEDR(5)` → Lst (a < b)  
- Exibição em displays: `HEX1 <- b`, `HEX2 <- a`

## 📂 Entrega
- Arquivos `.vhd`  
- Print da simulação  
- Vídeo de funcionamento

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab10 – Decodificador e Multiplexador

Projetos em VHDL para prática de hierarquia e reutilização de componentes.

## 📖 Objetivo
### Atividade 1 – Decodificador 4:16
- Criar decodificador 2:4.  
- Reutilizar em projeto 4:16.  
- Entradas → SW, saídas → LEDR.  

### Atividade 2 – Multiplexador 8:1
- Criar MUX 2:1.  
- Reutilizar em projeto 8:1.  
- Entradas → SW, saídas → LEDR.  

## 📂 Entrega
- Arquivos `.vhd` (5 para cada atividade)  
- Prints de simulação no ModelSim  
- Vídeos de funcionamento na placa

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab11 – Latches e Flip-Flops

Estudo de comportamento de Latch D e Flip-Flop tipo D (subida e descida).

## 📖 Atividades
### Atividade 1
- Implementar:
  - Latch D com clock  
  - FF tipo D sensível à borda de subida  
  - FF tipo D sensível à borda de descida  
- Fazer hierarquia com package e instanciar no arquivo superior  
- Comentar saídas Qa, Qb, Qc  
- **Variante 1.1**: usar `PROCESS` + `IF/THEN/ELSEIF`  
- **Variante 1.2**: usar `WAIT UNTIL`

### Atividade 2
- Implementar FF tipo D com RESET  
- **Variante 2.1**: `IF/THEN/ELSE`  
- **Variante 2.2**: `WAIT UNTIL`

## 📂 Entrega
- Atividade 1 → 5 arquivos VHD + print da simulação  
- Atividade 2 → 3 arquivos VHD + print da simulação

--------------------------------------------------------------------------------------------------------------------------------------------------

# 🧪 Lab12 – Flip-Flops, Registradores e Contadores

Exploração prática de flip-flops, registradores e contadores em VHDL.

## 📖 Atividades
### Atividade 1 – Flip-Flop D com MUX
- Criar FF tipo D sensível à borda de subida, com MUX 2:1 na entrada.  
- Entradas: `SW0 → D0`, `SW1 → D1`, `SW2 → Sel`, `KEY0 → Clock`  
- Saídas: `LEDR0 ← Q`, `LEDR1 ← D1`, `LEDR2 ← Sel`

### Atividade 2 – Registrador de Deslocamento 4 bits
- Usar FF da Atividade 1 como componente.  
- Entradas: `SW(3..0) → R`, `SW5 → W`, `KEY0 → Clock`, `KEY1 → L`  
- Saídas: `HEX0 ← R`, `HEX2 ← Q`

### Atividade 3 – Contador Crescente 4 bits
- Contador de 4 bits com enable e reset.  
- Entradas: `SW0 → E`, `SW5 → W`, `KEY0 → Clock`, `KEY1 → Resetn`  
- Saídas: `HEX0 ← Q`

### Atividade 4 – Contador Crescente 4 bits com Carga Paralela
- Usar sinais do tipo INTEGER.  
- Entradas: `SW(3..0) → R`, `SW0 → E`, `SW5 → W`, `KEY0 → Clock`, `KEY1 → Resetn`, `KEY2 → L`  
- Saídas: `HEX0 ← Q`

## 📂 Entrega
- Arquivos `.vhd`  
- Prints das simulações (ModelSim)  
- Vídeos dos testes na placa
