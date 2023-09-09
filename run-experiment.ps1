Set-ExecutionPolicy -Scope CurrentUser Bypass

echo "Executando Experimento"
echo "Experimento          : ${Env:EXPERIMENTO}"
echo "Prob. Remocao Perfis : ${Env:PROB_ROLE_REMOVAL}"
echo "Numero Features      : ${Env:HASHED_FEATURE_COUNT}"
echo "Metrica KNN          : ${Env:KNN_METRIC}"
echo "Param. Metrica KNN   : ${Env:KNN_METRIC_PARAMS}"
echo "K Vizinhos           : ${Env:KNN_NEIGHBORS}"
echo "Perfis Excluídos     : ${Env:SKIP_ROLES}"

pause

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt

jupyter execute .\notebooks\01-data-ingestion.ipynb
jupyter execute .\notebooks\02-feature-hasher.ipynb
jupyter execute .\notebooks\03-knn.ipynb
jupyter execute .\notebooks\04-recommender.ipynb
jupyter execute .\notebooks\05-generate-recomendations.ipynb
echo "" >> resultados.txt
echo $Env:EXPERIMENTO >> resultados.txt
parquet-tools show --format=github "notebooks/${Env:RESULT}" >> resultados.txt
echo "" >> resultados.txt