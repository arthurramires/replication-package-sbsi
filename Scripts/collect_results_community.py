import os
import shutil

# Definir paths
cs_detector_output_path = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Ferramentas\csDetector\out"
community_smells_results_path = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Dataset\community_smells\results"
ignored_repos_file = r"C:\Users\latinha\Desktop\Metodologia - Mestrado\Dataset\community_smells\ignored_repos.txt"

# Criar a pasta de resultados se não existir
os.makedirs(community_smells_results_path, exist_ok=True)

# Limpar ou criar o arquivo de ignorados
with open(ignored_repos_file, "w") as ignored_file:
    ignored_file.write("")

# Função para verificar se há arquivos CSV dentro da pasta results
def verificar_arquivos_csv(results_path):
    return [f for f in os.listdir(results_path) if f.endswith(".csv")]

# Percorrer todas as pastas de owners
for owner_folder in os.listdir(cs_detector_output_path):
    owner_path = os.path.join(cs_detector_output_path, owner_folder)

    if os.path.isdir(owner_path):
        for repo_folder in os.listdir(owner_path):
            repo_path = os.path.join(owner_path, repo_folder)
            results_path = os.path.join(repo_path, "results")

            if os.path.isdir(results_path):
                csv_files = verificar_arquivos_csv(results_path)
                if csv_files:
                    for csv_file in csv_files:
                        src_file = os.path.join(results_path, csv_file)
                        dest_file = os.path.join(community_smells_results_path, f"{repo_folder}_{csv_file}")
                        try:
                            shutil.copy(src_file, dest_file)
                        except Exception as e:
                            print(f"Erro ao copiar {csv_file} do repositório {repo_folder}: {e}")
                else:
                    with open(ignored_repos_file, "a") as ignored_file:
                        ignored_file.write(f"{repo_folder} (Owner: {owner_folder}) - Nenhum arquivo CSV encontrado\n")
            else:
                with open(ignored_repos_file, "a") as ignored_file:
                    ignored_file.write(f"{repo_folder} (Owner: {owner_folder}) - Pasta 'results' não encontrada\n")

print("Processo concluído!")
