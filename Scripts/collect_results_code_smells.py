import os
import pandas as pd

# Definir paths
designite_results_path = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Ferramentas\Designite\results"
code_smells_output_path = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Dataset\code_smells\results"
ignored_repos_file = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Dataset\code_smells\ignored_repos.txt"

# Criar a pasta de resultados se não existir
os.makedirs(code_smells_output_path, exist_ok=True)

# Limpar ou criar o arquivo de ignorados
with open(ignored_repos_file, "w") as ignored_file:
    ignored_file.write("")

# Função para verificar se o arquivo CSV tem conteúdo relevante
def arquivo_valido(file_path):
    try:
        df = pd.read_csv(file_path)
        return len(df) > 0  # Retorna True se o DataFrame não estiver vazio
    except Exception as e:
        print(f"Erro ao ler {file_path}: {e}")
        return False

# Função para processar e concatenar arquivos de cada repositório
def processar_repositorio(repo_name, src_folder, dest_folder):
    # Lista de arquivos a serem processados
    arquivos = ["implementationCodeSmells.csv", "methodMetrics.csv", "typeMetrics.csv", "designCodeSmells.csv"]

    # DataFrames para concatenação
    dfs = []

    for arquivo in arquivos:
        file_path = os.path.join(src_folder, arquivo)
        if os.path.exists(file_path) and arquivo_valido(file_path):
            try:
                df = pd.read_csv(file_path)
                df['source_file'] = arquivo  # Adicionar uma coluna para identificar a origem dos dados
                dfs.append(df)
            except Exception as e:
                print(f"Erro ao processar {file_path}: {e}")
                continue
        else:
            # Registrar no arquivo de ignorados se o arquivo for vazio ou inexistente
            with open(ignored_repos_file, "a") as ignored_file:
                ignored_file.write(f"{repo_name} - Arquivo {arquivo} ausente ou vazio\n")

    # Se houver DataFrames válidos, concatene e salve
    if dfs:
        resultado_df = pd.concat(dfs, ignore_index=True)
        output_file_path = os.path.join(dest_folder, f"{repo_name}_final.csv")
        resultado_df.to_csv(output_file_path, index=False)
        print(f"Arquivo final gerado para {repo_name} em {output_file_path}")
    else:
        print(f"Todos os arquivos de {repo_name} são inválidos ou ausentes. Repositório ignorado.")

# Percorrer todas as pastas de repositórios dentro de Designite\results
for repo_folder in os.listdir(designite_results_path):
    repo_path = os.path.join(designite_results_path, repo_folder)

    if os.path.isdir(repo_path):
        processar_repositorio(repo_folder, repo_path, code_smells_output_path)

print("Processo concluído!")
