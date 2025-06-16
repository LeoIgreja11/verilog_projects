import os
import subprocess

# Lista de arquivos a compilar
with open("compile.f", "r") as f:
    files = f.read().split() # files é lido e separado por cada espaço em branco


# Nome do binário gerado
output_file = "/home/leolinux/projetos/out/sim.out"


# Comando de compilação
compile_cmd = ["iverilog", "-o", output_file] + files
              # iverilog -o ../out/sim.out meu_modulo.v meu_modulo_tb.v


# Comando de simulação
sim_cmd = ["vvp", output_file]


# Executa compilação
print("Compilando...")
subprocess.run(compile_cmd, check=True)


# Executa a simulação
print("Simulando...")
suprocess.run(sim_cmd, check=True)

