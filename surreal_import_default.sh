# echo "Waiting for database to start..."
# sleep 10;
# echo "Database started. (hopefully)"
echo "Starting import..."
surreal import --conn http://localhost:8000 --user root --pass root --ns test --db test default.surql